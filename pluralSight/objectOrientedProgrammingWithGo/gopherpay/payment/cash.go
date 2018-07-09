package payment

import "fmt"

// Cash - black cash structure
type Cash struct{}

// CreateCashAccount -
func CreateCashAccount() *Cash {
	return &Cash{}
}

// ProcessPayment -
func (c Cash) ProcessPayment(amount float32) bool {
	fmt.Println("Processing a Cash transaction...")
	return true
}
