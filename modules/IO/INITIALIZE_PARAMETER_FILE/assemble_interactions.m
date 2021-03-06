function TOP_CLASS = assemble_interactions(TOP_CLASS, BOTTOM_CLASS)

CURRENT = TOP_CLASS;

while ~isequal(CURRENT.NEXT, BOTTOM_CLASS.NEXT)
    ia_class = get_IA_class(class(CURRENT), class(CURRENT.NEXT));
    CURRENT.IA_NEXT = ia_class;
    CURRENT.IA_NEXT.PREVIOUS = CURRENT;
    CURRENT.IA_NEXT.NEXT = CURRENT.NEXT;
    CURRENT.NEXT.IA_PREVIOUS = CURRENT.IA_NEXT;
    CURRENT = CURRENT.NEXT;
end

end
    


