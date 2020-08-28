
#include <stdio.h>

//#include <tensorflow/c/c_api.h>

/*
#include <Model.h>
#include <Tensor.h>

#include <tensorflow/core/kernels/array_ops.h>
#include <tensorflow/core/kernels/training_ops.h>
//#include <training_ops.h>

#include <cnn.h>

int go() {
    // so we don't get warnings about AVX instructions
    putenv((char*) "TF_CPP_MIN_LOG_LEVEL=2");

    //TF_Graph * graph;
    //printf("%s\n", TF_Version());

    //graph = TF_NewGraph();

    //TF_DeleteGraph(graph);

    //Model model("saved_models/ttt_nn/saved_model.pb");
    Model model("cppflow/examples/load_model/model.pb");
    model.init();


    ApplyGradientDescent(NULL, 0, 0, 0);

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
}*/

