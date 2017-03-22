--for highlight 3.36

Description="Adapt HTML to ancient MS Web Controls"

-- optional parameter: syntax description
function syntaxUpdate(desc)

  if (HL_OUTPUT ~= HL_FORMAT_HTML and HL_OUTPUT ~= HL_FORMAT_XHTML) then
    return
  end

  -- new element; subject to change
  ConfigOverride = {
    { Spacer="&nbsp;" },
  }
  
  function DecorateLineBegin(lineNumber)
    return '&nbsp;' 
  end
    
end

Plugins={

  { Type="lang", Chunk=syntaxUpdate },

}
