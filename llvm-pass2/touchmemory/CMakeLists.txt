#
# Courtesy of Adrian Sampson: https://github.com/sampsyo/llvm-pass-skeleton
#
add_library(TouchMemoryPass MODULE
    TouchMemory.cpp
)

target_compile_features(TouchMemoryPass PRIVATE cxx_range_for cxx_auto_type)

set_target_properties(TouchMemoryPass PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
    LINK_FLAGS "-Wl,-znodelete"
)

