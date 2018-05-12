class KakaoController < ApplicationController
  def chat_control
   @response = params[:content]
        
     if @response == "소개"
      @msg = {
        
            message: {
                text: "안녕하세요. 저희는 멋살람입니다. 유니라이언에 강의나 게시물이 업로드 됐을 때 알림을 전송합니다.",
                photo: {
                  url: "https://imageshack.com/a/img924/4199/TGCqLS.png",
                  width: 640,
                  height: 480
                        }
                # message_button: {
                #   label: "NAVER BLOG",
                #   url: "https://blog.naver.com/xhdtn8070/221231786261"
                # }
                    },
            keyboard: {
                type: "buttons",
                buttons: ["소개", "강의 목록"]
                       }
            }
            render json: @msg, status: :ok
            
        elsif @response == "강의 목록"
            @msg = {
              message: {
                text: "현재 올라온 강의 목록은 다음과 같습니다.",
              # photo: {
              #     url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
              #     width: 640,
              #     height: 480
              # },
                message_button: {
                  label: "UNI LION",
                  url: "https://uni.likelion.org/lectures"
                               }
                       },
              keyboard: {
                type: "buttons",
                buttons: ["소개", "강의 목록"]
                        }
              
                 }
            render json: @msg, status: :ok
       end
  end

  def keyboard_init
       @msg =
            { 
              type: "buttons",
              buttons: ["소개", "강의 목록"]
            }
        render json: @msg, status: :ok
       
  end
end
