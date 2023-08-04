local status, everforest = pcall(require, 'everforest')
if not status then
  print("Error: Could not import 'everforest'")
end

everforest.load()
