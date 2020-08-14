package main

import "testing"

func TestSoma(t *testing.T)  {

	got := soma(5, 5)
	want := 10

	if got != want {
		t.Errorf("funcao Soma não esta certa.\n devolveu: %v \n esperado: %v", got, want)
	}
	
}