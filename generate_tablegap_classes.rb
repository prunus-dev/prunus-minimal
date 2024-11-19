def tablegap_classes()
  class_format = <<~FORMAT
  .tgap-%{type}-%{value} table {
    border-collapse: separate;
    border-spacing: %{size1}%{unit} %{size2}%{unit};
  }
  FORMAT
  class_format.strip!

  classes = []

  # Row gaps 1-10
  10.times do |n|
    classes << class_format % {
      type: 'row', value: n+1, size1: 0, size2: n+1, unit: 'em'
    }
  end

  # Row gaps 1px-30px
  30.times do |n|
    classes << class_format % {
      type: 'row', value: "#{n+1}px", size1: 0, size2: n+1, unit: 'px'
    }
  end

  # Column gaps 1-10
  10.times do |n|
    classes << class_format % {
      type: 'col', value: n+1, size1: n+1, size2: 0, unit: 'em'
    }
  end

  # Column gaps 1px-30px
  30.times do |n|
    classes << class_format % {
      type: 'col', value: "#{n+1}px", size1: n+1, size2: 0, unit: 'px'
    }
  end

  return classes
end

File.write('./tablegap_classes.css', tablegap_classes.join("\n\n"))
