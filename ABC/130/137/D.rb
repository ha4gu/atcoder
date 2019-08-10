N, M = gets.split.map(&:to_i)
parttime_jobs = []
N.times do
  days, salary = gets.split.map(&:to_i)
  parttime_jobs << [days, salary]
end
# p parttime_jobs
parttime_jobs.sort! { |a, b|
  (b[0] <=> a[0]).nonzero? || b[1] <=> a[1]
}
p parttime_jobs

rest = M
earned = 0
until rest == 0
  current_best_job_index = parttime_jobs.index { |job| rest >= job[0] }
  unless current_best_job_index.nil?
    p earned += parttime_jobs[current_best_job_index][1]
    parttime_jobs.shift(current_best_job_index+1)
  end
  rest -= 1
end
puts earned

# うーん、このやり方ではダメだわ。
