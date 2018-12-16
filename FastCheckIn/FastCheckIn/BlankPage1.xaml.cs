using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace FastCheckIn
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class BlankPage1 : Page
   {

        ServiceReference1.Service1Client MyService;

        public BlankPage1()

        {
            this.InitializeComponent();
        } 

        protected override void OnNavigatedTo(NavigationEventArgs e)

        {
            MyService = new ServiceReference1.Service1Client();
        }

        private async void InsertData_Click(object sender, RoutedEventArgs e)
        {
            await MyService.InsertGuestAsync(new ServiceReference1.GuestData { 
                Guest_ID = txtGuest_ID.Text, 
                Name = txtName.Text,
                FirstName = txtFirstName.Text ,
                DateofBirth = dpiDateofBirth.Text,
                Phone = txtPhone.Text,
                Street = txtStreet.Text,
                Zip = txtZip.Text,
                City = txtCity.Text,
                State = txtState.Text,
                Country = txtCountry.Text,
                User =  txtUser.Text,
                Timestamp = txtTimestamp.Text;

            });
        } 

        private async void ShowData_Click(object sender, RoutedEventArgs e)

        {
            var GuestList = await MyService.GetGuestAsync();
            foreach (var Guest in GuestList)
            {
                GridViewItem EmpView = new GridViewItem();
                StackPanel Spanel = new StackPanel();
                Spanel.Children.Add(new TextBlock() { Text = Guest.Guest_ID });
                Spanel.Children.Add(new TextBox() { Text = Guest.Name });
                Spanel.Children.Add(new TextBlock() { Text = Guest.FirstName });
                EmpView.Content = Spanel;
                EmpGridview.Items.Add(EmpView);
            }
        }
   }
}