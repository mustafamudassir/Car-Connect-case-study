using NUnit.Framework;
using Moq;
using System.Collections.Generic;

[TestFixture]
public class CarRentalSystemTests
{
    [Test]
    public void TestCustomerAuthentication_WithInvalidCredentials()
    {
        // Arrange
        var mockCustomerService = new Mock<ICustomerService>();
        mockCustomerService.Setup(x => x.Authenticate(It.IsAny<string>(), It.IsAny<string>()))
            .Throws<AuthenticationException>();

        // Act and Assert
        Assert.Throws<AuthenticationException>(() =>
        {
            mockCustomerService.Object.Authenticate("invalidUsername", "invalidPassword");
        });
    }

    [Test]
    public void TestUpdateCustomerInformation()
    {
        // Arrange
        var mockCustomerService = new Mock<ICustomerService>();
        var updatedCustomer = new Customer
        {
            CustomerID = 1,
            FirstName = "John",
            LastName = "Doe",
            Email = "john.doe@example.com",
            PhoneNumber = "1234567890",
            Address = "123 Main St",
            Username = "johndoe"
        };

        // Act
        mockCustomerService.Object.UpdateCustomer(updatedCustomer);

        // Assert
        mockCustomerService.Verify(x => x.UpdateCustomer(updatedCustomer), Times.Once);
    }

    [Test]
    public void TestAddNewVehicle()
    {
        // Arrange
        var mockVehicleService = new Mock<IVehicleService>();
        var newVehicle = new Vehicle
        {
            VehicleID = 1,
            Model = "Sedan",
            Make = "Toyota",
            Year = 2022,
            Color = "Blue",
            RegistrationNumber = "ABC123",
            Availability = true,
            DailyRate = 50.0
        };

        // Act
        mockVehicleService.Object.AddVehicle(newVehicle);

        // Assert
        mockVehicleService.Verify(x => x.AddVehicle(newVehicle), Times.Once);
    }

    [Test]
    public void TestUpdateVehicleDetails()
    {
        // Arrange
        var mockVehicleService = new Mock<IVehicleService>();
        var existingVehicle = new Vehicle
        {
            VehicleID = 1,
            Model = "Sedan",
            Make = "Toyota",
            Year = 2022,
            Color = "Blue",
            RegistrationNumber = "ABC123",
            Availability = true,
            DailyRate = 50.0
        };

        var updatedVehicle = new Vehicle
        {
            VehicleID = 1,
            Model = "SUV",
            Make = "Ford",
            Year = 2023,
            Color = "Black",
            RegistrationNumber = "XYZ789",
            Availability = false,
            DailyRate = 60.0
        };

        // Act
        mockVehicleService.Object.UpdateVehicle(updatedVehicle);

        // Assert
        mockVehicleService.Verify(x => x.UpdateVehicle(updatedVehicle), Times.Once);
    }

    [Test]
    public void TestGetAvailableVehicles()
    {
        // Arrange
        var mockVehicleService = new Mock<IVehicleService>();
        mockVehicleService.Setup(x => x.GetAvailableVehicles())
            .Returns(new List<Vehicle>
            {
                new Vehicle { VehicleID = 1, Model = "Sedan", Availability = true },
                new Vehicle { VehicleID = 2, Model = "SUV", Availability = true }
                // Add more vehicles as needed
            });

        // Act
        var availableVehicles = mockVehicleService.Object.GetAvailableVehicles();

        // Assert
        Assert.NotNull(availableVehicles);
        Assert.AreEqual(2, availableVehicles.Count);
        // Add more assertions based on your implementation
    }

    [Test]
    public void TestGetAllVehicles()
    {
        // Arrange
        var mockVehicleService = new Mock<IVehicleService>();
        mockVehicleService.Setup(x => x.GetAllVehicles())
            .Returns(new List<Vehicle>
            {
                new Vehicle { VehicleID = 1, Model = "Sedan" },
                new Vehicle { VehicleID = 2, Model = "SUV" }
                // Add more vehicles as needed
            });

        // Act
        var allVehicles = mockVehicleService.Object.GetAllVehicles();

        // Assert
        Assert.NotNull(allVehicles);
        Assert.AreEqual(2, allVehicles.Count);
        // Add more assertions based on your implementation
    }
}
