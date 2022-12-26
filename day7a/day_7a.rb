data = File.readlines('input.txt')

cwd = []

dir_sizes = Hash.new { |h, k| h[k] = 0 }

data
  .map(&:chomp)
  .map{_1.split(' ')}
  .each do |line|
    case line
    in ['$', 'cd', '..']
      cwd.pop
    in ['$', 'cd', dir]
      cwd << dir
    in ['$', 'ls']
    in ['dir', dirname]
    in [size, filename]
      cwd.length.times do |x|
        dir_sizes[cwd[0..x]] += size.to_i
      end
    end
  end

p dir_sizes
    .inject(0) {|sum, (dir,size)| size <= 100000 ? sum + size : sum }