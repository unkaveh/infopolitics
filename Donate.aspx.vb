Imports Stripe
Partial Class Donate
    Inherits System.Web.UI.Page


    'Public Sub radioClick(sender As Object, e As EventArgs)
    '    If rdbOneDollar.Checked Then
    '        txtOther.Text = "1"
    '    ElseIf rdbFiveDollars.Checked Then
    '        txtOther.Text = rdbFiveDollars.Value
    '    ElseIf rdbTenDollars.Checked Then
    '        txtOther.Text = rdbTenDollars.Value
    '    ElseIf rdbTwentyDollars.Checked Then
    '        txtOther.Text = rdbTwentyDollars.Value
    '    ElseIf rdbFiftyDollars.Checked Then
    '        txtOther.Text = rdbFiftyDollars.Value
    '    ElseIf rdbOneHundred.Checked Then
    '        txtOther.Text = rdbOneHundred.Value
    '    End If
    'End Sub

    Protected Sub btnSubmitPayment_Click(sender As Object, e As EventArgs) Handles btnSubmitPayment.Click
        Dim myCharge = New StripeChargeCreateOptions()

        myCharge.Currency = "usd"

        Dim myAmount As String = ""
        'If rdbOneDollar.Checked Then

        '    Dim onedollar = Integer.Parse(rdbOneDollar.Value)
        '    myCharge.Amount = onedollar
        '    myAmount = rdbOneDollar.Value
        'ElseIf rdbFiveDollars.Checked Then
        '    Dim fiveDollars = Integer.Parse(rdbFiveDollars.Value)
        '    myCharge.Amount = fiveDollars
        '    myAmount = rdbFiveDollars.Value
        'ElseIf rdbTenDollars.Checked Then
        '    Dim tenDollars = Integer.Parse(rdbTenDollars.Value)
        '    myCharge.Amount = tenDollars
        '    myAmount = rdbTenDollars.Value
        'ElseIf rdbTwentyDollars.Checked Then
        '    Dim twentyDollars = Integer.Parse(rdbTwentyDollars.Value)
        '    myCharge.Amount = twentyDollars
        '    myAmount = rdbTwentyDollars.Value
        'ElseIf rdbFiftyDollars.Checked Then
        '    Dim fiftyDollars = Integer.Parse(rdbFiftyDollars.Value)
        '    myCharge.Amount = fiftyDollars
        '    myAmount = rdbFiftyDollars.Value
        'ElseIf rdbOneHundred.Checked Then
        '    Dim oneHundred = Integer.Parse(rdbOneHundred.Value)
        '    myCharge.Amount = oneHundred
        '    myAmount = rdbOneHundred.Value
        'Else
        '    myAmount = txtOther.Text
        '    Dim heynow As Integer = Integer.Parse(txtOther.Text)
        '    myCharge.Amount = heynow
        'End If

        myAmount = txtOther.Text
        Dim heynow As Integer = Integer.Parse(txtOther.Text)
        myCharge.Amount = heynow

        myCharge.Description = "Charge it like it's hot"
        myCharge.SourceCard = New SourceCard() With {
            .Number = txtCCNumber.Text,
            .ExpirationYear = "2020",
            .ExpirationMonth = "09",
            .AddressCountry = "US",
            .AddressLine1 = txtAddress.Text,
            .AddressCity = txtCity.Text,
            .AddressState = ddlState.SelectedValue.ToString,
            .AddressZip = txtZip.Text,
            .Name = txtFirst.Text & " " & txtLast.Text,
            .Cvc = txtCCSecurity.Text
          }
        myCharge.Capture = True
        Dim chargeService = New StripeChargeService()
        Dim stripeCharge As StripeCharge = chargeService.Create(myCharge)


        lblConfirm.Text = "Thank you " & txtFirst.Text & " for your generous donation. You will be charged $" & myAmount & ".00 x   to your card. <br /> Thank you again."

    End Sub



    
End Class
