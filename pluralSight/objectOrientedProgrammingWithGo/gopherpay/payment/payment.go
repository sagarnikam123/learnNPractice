package payment

import (
	"errors"
	"fmt"
	"regexp"
	"time"
)

// CreditCard - a struct to define few fields
type CreditCard struct {
	ownerName       string
	cardNumber      string
	expirationMonth int
	expirationYear  int
	securityCode    int
	availableCredit float32
}

// CreateCreditAccount - for creating CreditCard object
func CreateCreditAccount(ownerName, cardNumber string, expirationMonth, expirationYear, securityCode int) *CreditCard {
	return &CreditCard{
		ownerName:       ownerName,
		cardNumber:      cardNumber,
		expirationMonth: expirationMonth,
		expirationYear:  expirationYear,
		securityCode:    securityCode,
	}
}

// CheckingAccount -
type CheckingAccount struct{}

// ProcessPayment -
func (c *CreditCard) ProcessPayment(amount float32) bool {
	fmt.Println("Processing a credit card payment...")
	return true
}

// ProcessPayment -
func (c *CheckingAccount) ProcessPayment(amount float32) bool {
	fmt.Println("Paying with checking account")
	return true
}

// OwnerName - return owner name
func (c CreditCard) OwnerName() string {
	return c.ownerName
}

// SetOwnerName - for setting owner name
func (c *CreditCard) SetOwnerName(value string) error {
	if len(value) == 0 {
		return errors.New("Invalid owner name provided")
	}
	c.ownerName = value
	return nil
}

// CardNumber - for viewing card number
func (c CreditCard) CardNumber() string {
	return c.cardNumber
}

var cardNumberPattern = regexp.MustCompile("\\d{4}-\\d{4}-\\d{4}-\\d{4}")

// SetCardNumber - for validating & setting card number
func (c *CreditCard) SetCardNumber(value string) error {
	if !cardNumberPattern.Match([]byte(value)) {
		return errors.New("Invalid credit card number format")
	}
	c.cardNumber = value
	return nil
}

// ExpirationDate - return month & year of expiration
func (c CreditCard) ExpirationDate() (int, int) {
	return c.expirationMonth, c.expirationYear
}

// SetExpirationDate - setting month & year of expiration
func (c *CreditCard) SetExpirationDate(month, year int) error {
	now := time.Now()
	if year < now.Year() ||
		(year == now.Year() && time.Month(month) < now.Month()) {
		return errors.New("Expiration date must lie in a future")
	}
	c.expirationMonth, c.expirationYear = month, year
	return nil
}

// SecurityCode - getting security code
func (c CreditCard) SecurityCode() int {
	return c.securityCode
}

// SetSecurityCode - setting security code
func (c *CreditCard) SetSecurityCode(value int) {
	if value < 100 || value > 999 {

	}
}

// AvailableCredit - showing credit
func (c CreditCard) AvailableCredit() float32 {
	return 5000 // this can come from web service, client doesn't know or card
}
