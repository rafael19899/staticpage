class UsersController < ApplicationController
# Omitindo as outras ações para não atrapalhar...
# new
# show
# create
def edit
@user = User.find(params[:id])
end
def update
@user = User.find(params[:id])
if @user.update(user_params)
redirect_to @user,
notice: 'Cadastro atualizado com sucesso!'
else
render action: :edit
end
end
# ...
end
