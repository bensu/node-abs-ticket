Issue reproduction for [CLJS-1466](http://dev.clojure.org/jira/browse/CLJS-1466)

Some thoughts on a related issue [CLJS-1444](http://dev.clojure.org/jira/browse/CLJS-1444)

1. Relative paths are desirable to produce "context free code." If the user chooses absolute paths, then that behavior is respected and there's nothing to handle (no "path algebra") .

2. When dealing with relative paths, the whole system needs to establish a "frame of reference", a root path. The ClojureScript compiler assumes the path from which it is compiling to be that frame of reference, which usually coincides with the top root of the project. Though arbitrary, it is the only choice that makes sense.

3. The frame of reference is not explicit anywhere in the code, since it is defined as ".". If it were explicit, it would reveal context, as in "/home/some-user/their-folder/this-project/".

4. When we approach the code from another reference point (executing the script from another directory), we first need to find the original compiler path (reference point,) and then resolve all paths from there.

Path algebra:
```
compiler-path = __dirname - :output-to
```

Node.js
```js
var compiler-path = __dirname.replace(output_to, "")
path.resolve (compiler-path, output-dir, "goog", "base.js")
path.resolve (compiler-path, output-dir, "cljs_deps.js")
```
