def calculator (operand_1, operand_2, operator)
  if operator == "x"
    return operand_1 *operand_2
  elsif operator == "-"
    return operand_1 -operand_2
  elsif operator == "+"
    return operand_1 +operand_2
  elsif operator == "/"
    return operand_1 /operand_2
  elsif operator != "x" || "-" || "+" || "/"
    return "oups"
  end
end
