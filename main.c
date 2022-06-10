/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** main
*/
#include <string.h>
#include <stdio.h>

int main(void)
{
    char *str2 = strdup("zaza");
    
    printf("res %s\n", rindex(str2, 'z'));
    printf("res %s\n", arindex(str2, 'z'));
}