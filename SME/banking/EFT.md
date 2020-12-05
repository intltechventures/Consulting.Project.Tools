
# EFT Resources

## EFT Integration Discussion Questions

1. Who are the external third-parties involved in the planned EFT transaction flows?
1. What are the specific EFT transaction flows that need to be supported?
1. Will these EFT transaction flows be strictly B2B, or will B2C flows also be supported?
1. Will this involve credit cards?
1. Will this involve debit cards?
1. Will this involve government payment cards?
1. Will this involve bank wire transfers, or ACH processing?
1. Are there any requirements for any transaction processing for other currencies (i.e. other than USD)?
1. Are there any requirements (current, or future anticipated) to support cryptocurrencies (e.g. Bitcoin, Ether, etc.)?
1. What secure vault storage/access capabilities are available (i..e for storing payment processing information, such as credit card, bank account details, etc.)
1. If secure vault storage/access capabilities exists - are they isolated within their own physical/virtual network?
1. If secure vault storage/access capabilities exists - are they managed in-house, or by an external third-party (e.g. SaaS)?
1. Will this involve only one-time payments - entered by the member?
1. Will this involve regular scheduling of payments (e.g. monthly, semi-annually, annually)?
1. Will this {interface | solution | system} need to support reversals of EFT transactions?
1. What is the expected peak volume of transactions (per minute, per hour, per day) for this EFT interface?
1. What is the expected peak number of concurrent users that will be accessing this EFT interface?
1. What are the hours that this EFT interface must be available?
1. Does this EFT interface involve any scenarios for bulk batch processing of transactions (e.g. monthly monthly cycles)?
1. What are the existing EFT processing capabilities of the organizations?
1. Are there any existing integration capabilities with one or more EFT Payment Gateways (e.g. through our banking relationships, or with third-party payment gateway processors)?
1. Are there any specific interface format requirements that must be adhered to for this interface (e.g. EDI,SWIFT, ACH, ISO 8583)
1. Is there a requirement to send an ASC X12N Health Care Claim Payment/Advice (835) - coordinated with the EFT processing for this integration?
1. Are there any scenarios in which a payment card will be physically presented to complete a transaction (i.e. EFT via a Point-of-Sale device)?
1. Which credit card payment providers will need to be supported by the EFT integration (e.g. American Express, Discover, JCB International, MasterCard, Visa, etc.)
1. Are there an existing PCI-DSS compliant solution capabilities/elements within the organization today?
1. Does the organization have a current PCI-DSS Certification?
1. Does the organization utilize an independent third-party for PCI-DSS assessments?
1. What were the findings of the most recent PCI-DSS Assessment?
1. Is there an internal Subject-Matter-Expert within the organization designated with responsibility for PCI-DSS compliance?
1. Are there any existing EFT Fraud Detection capabilities available within the organization, or will the Payment Gateway Processor be responsible for that?


## PCI-DSS References

1. https://en.wikipedia.org/wiki/Payment_Card_Industry_Data_Security_Standard
1. https://www.pcisecuritystandards.org
1. https://www.pcisecuritystandards.org/program_training_and_qualification/webinars
1. https://www.pcisecuritystandards.org/documents/PCI_DSS-QRG-v3_2_1.pdf
1. https://www.pcisecuritystandards.org/pci_security/completing_self_assessment
1. https://www.pcisecuritystandards.org/documents/Prioritized-Approach-for-PCI-DSS-v3_2_1.pdf
1. https://www.pcisecuritystandards.org/documents/PCI_DSS_v3-2-1.pdf
1. https://www.pcisecuritystandards.org/documents/PCI_DSS_Summary_of_Changes_3-2-1.pdf

## Electronic Fund Transfer Act (EFTA) - (Regulation E) References

1. https://en.wikipedia.org/wiki/Electronic_Fund_Transfer_Act
1. https://www.investopedia.com/terms/e/electronic-funds-transfer-act.asp
1. https://www.investopedia.com/terms/r/regulation-e.asp
  * https://www.consumerfinance.gov/compliance/supervision-examinations/electronic-fund-transfer-act-efta-examination-procedures/
1. https://files.consumerfinance.gov/f/documents/cfpb_supervision-and-examination-manual_efta-exam-procedures-incl-remittances_2019-03.pdf
1. https://www.federalreserve.gov/boarddocs/supmanual/cch/efta.pdf
1. https://www.consumerfinance.gov/rules-policy/final-rules/electronic-fund-transfers-regulation-e/
1. https://www.fdic.gov/regulations/laws/rules/
1. https://www.fdic.gov/regulations/laws/rules/6000-1350.html#fdic6000titlexeft
1. https://www.fdic.gov/news/financial-institution-letters/
1. https://www.fdic.gov/news/financial-institution-letters/2019/fil19009b.pdf
1. https://www.fdic.gov/news/financial-institution-letters/2016/fil16076.html


## General Background Reading References

1. https://en.wikipedia.org/wiki/Credit_card
1. https://en.wikipedia.org/wiki/Card_association
1. https://en.wikipedia.org/wiki/Debit_card
1. https://en.wikipedia.org/wiki/Electronic_benefit_transfer
1. https://en.wikipedia.org/wiki/Point_of_sale
1. https://en.wikipedia.org/wiki/Payment_gateway
1. https://en.wikipedia.org/wiki/Payment_processor
1. https://en.wikipedia.org/wiki/Merchant_services
1. https://en.wikipedia.org/wiki/Issuing_bank
1. https://en.wikipedia.org/wiki/Acquiring_bank
1. https://en.wikipedia.org/wiki/Automated_clearing_house
1. https://en.wikipedia.org/wiki/Office_of_Foreign_Assets_Control
1. https://en.wikipedia.org/wiki/Comparison_of_payment_systems
1. https://en.wikipedia.org/wiki/ISO_8583
1. ASC X12N Health Care Claim Payment/Advice (835) transaction
  * https://www.federalregister.gov/documents/2012/01/10/2012-132/administrative-simplification-adoption-of-standards-for-health-care-electronic-funds-transfers-efts
  * https://www.federalregister.gov/documents/2012/01/10/2012-132/administrative-simplification-adoption-of-standards-for-health-care-electronic-funds-transfers-efts
  * https://support.changehealthcare.com/customer-resources/hipaa-simplified/transactions/era-eft https://www.federalregister.gov/documents/2009/01/16/E9-740/health-insurance-reform-modifications-to-the-health-insurance-portability-and-accountability-act
    * "The standard for Healthcare EFT transactions is the Cash Concentration/Disbursement plus Addenda (CCD+) implementation specifications from the 2011 National Automated Clearing House Association (NACHA) Operating Rule"

