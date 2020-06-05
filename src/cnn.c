
#include <stdio.h>

#include <tensorflow/c/c_api.h>

#include <cnn.h>

int go() {
    printf("%s\n", TF_Version());
    return 0;
}

static PyObject *
spam_system(PyObject *self, PyObject *args)
{
    const char *command;
    int sts;

    if (!PyArg_ParseTuple(args, "s", &command))
        return NULL;
    sts = system(command);
    return PyLong_FromLong(sts);
}

