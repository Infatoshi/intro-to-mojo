# mojo pytorch speedtest

from python import Python

fn main() raises:
    let torch = Python.import_module('torch')
    let time = Python.import_module('time')

    let device = 'cuda' if torch.cuda.is_available() else 'cpu'
    print(device)

    let size = (1000, 100, 100, 100)

    let A_cpu = torch.randn(size)
    let B_cpu = torch.randn(size)

    let A_cuda = A_cpu.cuda()
    let B_cuda = B_cpu.cuda()

    var start_time = time.time()
    let result_cpu = torch.matmul(A_cpu, B_cpu)
    var end_time = time.time()
    print('CPU Time: ', end_time-start_time, 'seconds)

    var start_time = time.time()
    let result_cuda = torch.matmul(A_cuda, B_cuda)
    var end_time = time.time()
    print('CUDA Time: ', end_time-start_time, 'seconds)
    