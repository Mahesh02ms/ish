Feature: print hello world feature

  Scenario: Hello world scenario
    * print 'hello world'

  Scenario: declare and print variable
    
    *def balance=258
    *def fee=60

    And print " balance ==>" ,258

  Scenario: odd numbers
    
    *def a=25
    *def b=33

    * print ' mul ->' + (a * b)
