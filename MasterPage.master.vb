﻿
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        labeltodaydate.Text = DateTime.Now.ToString()
    End Sub
End Class

