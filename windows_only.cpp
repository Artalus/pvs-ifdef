#include <windows.h>

void func() {
    CreateWindowEx(
        0,
        L"text",
        L"text",
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL,
        NULL,
        0,
        NULL
    );
}
