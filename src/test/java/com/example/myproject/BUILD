load("@rules_java//java:defs.bzl", "java_test")

java_test(
    name = "hello",
    srcs = ["TestHello.java"],
    test_class = "com.example.myproject.TestHello",
    deps = [
        "//src/main/java/com/example/myproject:hello-lib",
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "custom",
    srcs = ["TestCustomGreeting.java"],
    test_class = "com.example.myproject.TestCustomGreeting",
    deps = [
        "//src/main/java/com/example/myproject:custom-greeting",
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "custom_with_test_class",
    srcs = glob(["Test*.java"]),
    test_class = "com.example.myproject.TestCustomGreeting",
    deps = [
        "//src/main/java/com/example/myproject:custom-greeting",
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "fail",
    srcs = ["Fail.java"],
    test_class = "com.example.myproject.Fail",
    deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

# This exercises the "cpu:<num>" tag.
#
# Expected behavior:
# test0 and test1 run together then one of the other two alone, and then the remaining one alone.
java_test(
    name = "sleep0",
    srcs = ["TestSleep.java"],
    test_class = "com.example.myproject.TestSleep",
    deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "sleep1",
    srcs = ["TestSleep.java"],
    test_class = "com.example.myproject.TestSleep",
    deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "sleep2",
    srcs = ["TestSleep.java"],
    tags = ["cpu:20000"],
    test_class = "com.example.myproject.TestSleep",
    deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

java_test(
    name = "sleep3",
    srcs = ["TestSleep.java"],
    tags = ["cpu:20000"],
    test_class = "com.example.myproject.TestSleep",
    deps = [
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)

# This attempts to run TestCustomGreeting.java without any resources, so fails.
java_test(
    name = "resource-fail",
    srcs = glob(["Test*.java"]),
    test_class = "com.example.myproject.TestCustomGreeting",
    deps = [
        "//src/main/java/com/example/myproject:hello-lib",
        "@maven//:junit_junit",
        "@maven//:org_hamcrest_hamcrest_library",
    ],
)
