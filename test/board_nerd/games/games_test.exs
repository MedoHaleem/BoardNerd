defmodule BoardNerd.GamesTest do
  use BoardNerd.DataCase

  alias BoardNerd.Games

  describe "products" do
    alias BoardNerd.Games.Product

    @valid_attrs %{description: "some description", name: "some name", price: 42, quantity: 42}
    @update_attrs %{description: "some updated description", name: "some updated name", price: 43, quantity: 43}
    @invalid_attrs %{description: nil, name: nil, price: nil, quantity: nil}

    def product_fixture(attrs \\ %{}) do
      {:ok, product} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Games.create_product()

      product
    end

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert Games.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Games.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      assert {:ok, %Product{} = product} = Games.create_product(@valid_attrs)
      assert product.description == "some description"
      assert product.name == "some name"
      assert product.price == 42
      assert product.quantity == 42
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Games.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      assert {:ok, product} = Games.update_product(product, @update_attrs)
      assert %Product{} = product
      assert product.description == "some updated description"
      assert product.name == "some updated name"
      assert product.price == 43
      assert product.quantity == 43
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Games.update_product(product, @invalid_attrs)
      assert product == Games.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Games.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Games.get_product!(product.id) end
    end

    test "new_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Games.new_product()
    end
  end

  describe "categories" do
    alias BoardNerd.Games.Category

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def category_fixture(attrs \\ %{}) do
      {:ok, category} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Games.create_category()

      category
    end

    test "list_categories/0 returns all categories" do
      category = category_fixture()
      assert Games.list_categories() == [category]
    end

    test "get_category!/1 returns the category with given id" do
      category = category_fixture()
      assert Games.get_category!(category.id) == category
    end

    test "create_category/1 with valid data creates a category" do
      assert {:ok, %Category{} = category} = Games.create_category(@valid_attrs)
      assert category.name == "some name"
    end

    test "create_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Games.create_category(@invalid_attrs)
    end

    test "update_category/2 with valid data updates the category" do
      category = category_fixture()
      assert {:ok, category} = Games.update_category(category, @update_attrs)
      assert %Category{} = category
      assert category.name == "some updated name"
    end

    test "update_category/2 with invalid data returns error changeset" do
      category = category_fixture()
      assert {:error, %Ecto.Changeset{}} = Games.update_category(category, @invalid_attrs)
      assert category == Games.get_category!(category.id)
    end

    test "delete_category/1 deletes the category" do
      category = category_fixture()
      assert {:ok, %Category{}} = Games.delete_category(category)
      assert_raise Ecto.NoResultsError, fn -> Games.get_category!(category.id) end
    end

    test "new_category/1 returns a category changeset" do
      category = category_fixture()
      assert %Ecto.Changeset{} = Games.new_category()
    end
  end
end
