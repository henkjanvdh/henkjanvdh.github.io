---
layout: post
title: Diversity
category: research
description: The diversity index explained
tags: agArrays
---


```
qDp <- function (values, q = 2, offset, na.rm = TRUE) 
{
    if (max(values, na.rm = na.rm) > offset) 
        offset = max(values, na.rm = na.rm)
    values = c(values, offset)
    pp = values/sum(values, na.rm = na.rm)
    Div = (sum(pp^q, na.rm = na.rm))^(1/(1 - q))
    return(Div - 1)
}
```