
Partial Class search_default
    Inherits System.Web.UI.Page

    Protected Sub TB_search_TextChanged(sender As Object, e As EventArgs) Handles TB_search.TextChanged
        Dim searchWord As String
        searchWord = "Select * From Poem2 where (Author Like '%" _
+ TB_search.Text.ToString() + "%')"        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub TB_search2_TextChanged(sender As Object, e As EventArgs) Handles TB_search2.TextChanged
        Dim a As String
        a = "Select * From Poem2 where (Author Like '%" _
+ TB_search2.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = a

    End Sub
End Class
