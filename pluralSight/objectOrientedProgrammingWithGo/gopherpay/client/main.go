package main

import (
	"gopherpay/paybroker"
	"gopherpay/payment"
)

// PaymentOption - for abstracting
type PaymentOption interface {
	ProcessPayment(float32) bool
}

func main() {
	var option PaymentOption
	option = &payment.CreditCard{}
	option.ProcessPayment(500)

	option = &payment.CheckingAccount{}
	option.ProcessPayment(500)

	option = &paybroker.PaymentBrokerAccount{}
	option.ProcessPayment(500)
}
