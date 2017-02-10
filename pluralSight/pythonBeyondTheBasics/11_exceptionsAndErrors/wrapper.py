# wrapper.py

def wrap(text, line_length):
    """Wrap a string to a specified line length.

    Args:
        text: The string to wrap.
        line_length: The line length in characters.

    Returns:
        A wrapped string.

    Raises:
        ValueError: If line_length is not positive.
    """
    if line_length < 1:
        raise ValueError("line_length {} is not positive".format(line_length))

    words = text.split()

    if max(map(len, words)) > line_length:
        raise ValueError("line_length must be at least as long as the longest word")

    lines_of_words = []
    current_line_length = line_length
    for word in words:
        if current_line_length + len(word) > line_length:
            lines_of_words.append([])    # new line
            current_line_length = 0
        lines_of_words[-1].append(word)
        current_line_length += len(word) + len(' ')
    lines = [' '.join(line_of_words) for line_of_words in lines_of_words]
    result = '\n'.join(lines)
    assert all(len(line) <= line_length for line in result.splitlines())
    return result

wealth_of_nations = "The annual labour of every nation is the fund which or" \
"iginally supplies it with all the necessaries and conveniencies of life wh" \
"ich it annually consumes, and which consist always either in the immediate" \
" produce of that labour, or in what is purchased with that produce from ot" \
"her nations. According, therefore, as this produce, or what is purchased w" \
"ith it, bears a greater or smaller proportion to the number of those who a" \
"re to consume it, the nation will be better or worse supplied with all the" \
" necessaries and conveniencies for which it has occasion."
