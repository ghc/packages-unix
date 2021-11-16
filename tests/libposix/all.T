test('posix002', [ javascript_failures, reqlib('unix'), omit_ways(prof_ways), fragile_for(16550, concurrent_ways) ],
                 compile_and_run, [''])

# Skip on mingw32: assumes existence of 'pwd' and /tmp
test('posix003', [javascript_failures, when(opsys('mingw32'), skip), extra_clean(['po003.out'])],
                 compile_and_run, [''])

test('posix004', [ javascript_failures, reqlib('unix') ], compile_and_run, [''])

test('posix005', [javascript_failures, reqlib('unix') ], compile_and_run, [''])

test('posix006', [javascript_failures, reqlib('unix')], compile_and_run, [''])
test('posix009', [ javascript_failures, omit_ways(threaded_ways), reqlib('unix') ], compile_and_run, [''])
test('posix010', [javascript_failures, reqlib('unix')], compile_and_run, [''])

test('posix014', [ javascript_failures, reqlib('unix'), omit_ways(prof_ways) ],
                 compile_and_run, [''])
