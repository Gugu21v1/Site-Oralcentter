class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :implantes, :cirurgia, :endodontia, :harmonizacao, :odontopediatria, :ortodontia, :protese, :franqueado ]
  layout false, only: :franqueado # Isso desativa o uso do layout padrão

  def home
    @posts = Post.last(3)
  end

  def franqueado
    @posts = Post.last(3)
  end

  def implantes
    @posts = Post.last(3)
  end

  def cirurgia
    @posts = Post.last(3)
  end

  def endodontia
    @posts = Post.last(3)
  end

  def harmonizacao
    @posts = Post.last(3)
  end

  def odontopediatria
    @posts = Post.last(3)
  end

  def ortodontia
    @posts = Post.last(3)
  end

  def protese
    @posts = Post.last(3)
  end

  def cliente
    if current_user.cliente == false
      redirect_to root_path
      flash[:alert] = "Somente clientes podem acessar essa página."
    end
  end
end
