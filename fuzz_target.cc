#include <stdint.h>
#include <stdlib.h>

extern "C" int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
    if (Size > 4)
        if (Data[0] == 'x' && Data[1] == 'y' && Data[2] == 'z')
            abort();
  return 0;
}
