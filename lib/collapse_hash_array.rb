module CollapseHashArray

  def self.collapse(array, key)
    result = [];
    array.each do |item|
      r_index = result.index {|r_item| r_item[key] == item[key]}
      unless r_index
        result << item
      else
        result[r_index] = result[r_index].merge(item)
      end
    end
    result
  end

end
