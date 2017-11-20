# Arch Linux PKGBUILD for Project DeepSpeech

Arch Linux packages to install CPU versions of Mozilla's Deep Speech implementation.
Project DeepSpeech is an open source Speech-To-Text engine. It uses a model trained by machine learning techniques, based on Baidu's Deep Speech research paper. Project DeepSpeech uses Google's TensorFlow project to make the implementation easier.

Please fine the original implementation and issue tracker at [https://github.com/mozilla/DeepSpeech](https://github.com/mozilla/DeepSpeech).

## Dependencies

The current binaries are build using `sox=14.4.1-4`, installed directly from the [Arch Linux Archive]().
Support from the current version of `sox` might be added [in future releases](https://github.com/mozilla/DeepSpeech/issues/978).

Install the required version with 

```
# pacman -U https://archive.archlinux.org/packages/s/sox/sox-14.4.1-4-x86_64.pkg.tar.xz
```

## Binaries

The binaries were build according to the instructions in the [official repository](https://github.com/mozilla/DeepSpeech/blob/master/native_client/README.md).

## Install

Create packages and install both `deepspech` and the python bindings using

```
$ make all
# pacman -U deepspeech/deepspeech-0.0.2-1-x86_64.pkg.tar.xz
# pacman -U deepspeech/deepspeech-0.0.2-1-x86_64.pkg.tar.xz
```

## File listing

For purposes of comparison, here is the file listing that should be present after running `make all`.

```
.
├── deepspeech
│   ├── deepspeech-0.0.2-1-x86_64.pkg.tar.xz
│   ├── deepspeech-0.0.2.tar.gz
│   ├── pkg
│   │   └── deepspeech
│   │       └── usr
│   │           ├── bin
│   │           │   └── deepspeech
│   │           └── lib
│   │               ├── libdeepspeech.so
│   │               ├── libdeepspeech_utils.so
│   │               └── libtensorflow_cc.so
│   ├── PKGBUILD
│   └── src
│       ├── deepspeech-0.0.2
│       │   └── usr
│       │       ├── bin
│       │       │   └── deepspeech
│       │       └── lib
│       │           ├── libdeepspeech.so
│       │           ├── libdeepspeech_utils.so
│       │           └── libtensorflow_cc.so
│       └── deepspeech-0.0.2.tar.gz -> /opt/builds/arch-deepspeech/deepspeech/deepspeech-0.0.2.tar.gz
├── LICENSE
├── Makefile
├── python2-deepspeech
│   ├── pkg
│   │   └── python2-deepspeech
│   │       └── usr
│   │           ├── bin
│   │           └── lib
│   │               └── python2.7
│   │                   └── site-packages
│   │                       ├── deepspeech
│   │                       │   ├── client.py
│   │                       │   ├── client.pyc
│   │                       │   ├── __init__.py
│   │                       │   ├── __init__.pyc
│   │                       │   ├── model.i
│   │                       │   ├── model.py
│   │                       │   ├── model.pyc
│   │                       │   ├── utils.i
│   │                       │   ├── utils.py
│   │                       │   └── utils.pyc
│   │                       ├── deepspeech-0.0.2.dist-info
│   │                       │   ├── DESCRIPTION.rst
│   │                       │   ├── entry_points.txt
│   │                       │   ├── INSTALLER
│   │                       │   ├── METADATA
│   │                       │   ├── metadata.json
│   │                       │   ├── RECORD
│   │                       │   ├── top_level.txt
│   │                       │   └── WHEEL
│   │                       ├── _model.so
│   │                       ├── python
│   │                       │   ├── model_wrap.o
│   │                       │   └── utils_wrap.o
│   │                       └── _utils.so
│   ├── PKGBUILD
│   ├── python2-deepspeech-0.0.2-1-x86_64.pkg.tar.xz
│   ├── python2-deepspeech-0.0.2.tar.gz
│   └── src
│       ├── deepspeech-0.0.2-cp27-cp27mu-linux_x86_64.whl
│       └── python2-deepspeech-0.0.2.tar.gz -> /opt/builds/arch-deepspeech/python2-deepspeech/python2-deepspeech-0.0.2.tar.gz
└── README.md

```

## Reference 

Hannun, Awni, et al. "Deep speech: Scaling up end-to-end speech recognition." arXiv preprint [arXiv:1412.5567](https://arxiv.org/pdf/1412.5567.pdf) (2014).
