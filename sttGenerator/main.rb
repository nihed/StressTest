


targetFile = open('export.csv', 'w')

scenarios = Array.new

for scenarioId in 0..30
  scenarios << "HISTO#{scenarioId}"
  scenarios << "HYPO#{scenarioId}"
end


for dealId in 0..300000
  pnl = rand(100.2...10000.9)

  for scenarioId in 0..scenarios.size-1
    shockedValue = pnl * rand(0.1...1.3)
    targetFile.write "#{dealId};#{scenarios[scenarioId]};#{pnl.round(2)};#{shockedValue.round(2)}"
    targetFile.write "\n"
  end

end


targetFile.close

