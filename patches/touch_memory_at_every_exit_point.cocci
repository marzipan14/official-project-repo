@@
identifier F;
@@
    F(...) {
+       volatile int __A_VARIABLE;
        ...
+       __A_VARIABLE = 1;
        return...;
    }
