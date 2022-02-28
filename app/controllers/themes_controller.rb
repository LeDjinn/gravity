class ThemesController < ApplicationController

    def index

        @themes = Theme.all.where(user_id: current_user.id)
        render json: @themes
    end

    def create

        @theme = Theme.new(theme_params)
        if @theme.save
            render json: @theme
        else
            render json: @theme.errors, status: :unprocessable_entity
        end
    end

    def show
        @theme = Theme.find(params[:id])
        render json: @theme
    end

    def delete
        @theme = Theme.find(params[:id])
        @theme.destroy
        render json: {message: 'Theme deleted'}
    end

    private
 

    def theme_params
        params.require(:theme).permit(:user_id, :name,
            :bodyBg,
            :bgNavbar,
            :colorNavbar,
            :heroHomeHeight,
            :heroHomeBgImage,
            :heroHomeBgColor,
            :heroHomeColor,
            :buttonBgColor,
            :buttonColor,
            :buttonShadow,
            :buttonBorderRadius,
            :heroConsultantsHeight,
            :heroConsultantsBgImage,
            :heroConsultantsBgColor,
            :heroConsultantsColor,
            :heroProfilHeight,
            :heroProfilBgImage,
            :heroProfilBgColor,
            :heroProfilColor,
            :backgroundProfilcolor,
            :heroAboutHeight,
            :heroAboutBgImage,
            :heroAboutBgColor,
            :heroAboutColor,
            :footerBgColor,
            :footerColor,
            :footerHeight)
    end
        
end
