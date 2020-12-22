def Settings(**kwargs):
    return {
        'flags':['-Wall', '-O2', '-std=c++11', '-x', 'c++'],    # Flags for C++
        'interpreter_path': '/usr/local/Caskroom/miniconda/base/envs/pytorch/bin/python3',
        'sys_path':[
            '/path/to/third_paty/packages',     # Do not need for site-package in interpreter path
        ]
    }
