package tumi
{
   import pugem.Account;
   import wahyqise.Tuco;
   import dicyl.Mukyhokot;
   import dicyl.Syf;
   import cycuka.Sinaf;
   import pumoc.Gigo;
   import wipivyv.Text;
   import pumoc.Juc;
   import aaa.RotmgParameters.RotmgParameters;
   import jediwip.Kybidu;
   import wahyqise.Ziky;
   import com.company.assembleegameclient.objects.GameObject;


   public class Qiriwu extends Object
   {
      public function Qiriwu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const resyfy:Qasejo = new Qasejo(14802908,16777215,5526612);

      private const colujoqo:Qasejo = new Qasejo(5644060,16549442,13484223);

      private const dijadu:Qasejo = new Qasejo(2493110,61695,13880567);

      private const gylykiv:Qasejo = new Qasejo(4098560,10944349,13891532);

      public var account:Account;

      public var model:Tuco;

      public var daju:Mukyhokot;

      public var addSpeechBalloon:Syf;

      public var kelav:Sinaf;

      public var gagapas:Gigo;

      public var fopyluqu:Lejiby;

      public function execute(param1:Text) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.fopyluqu.rorevucov(param1.text_))
         {
            if(param1.name_==this.model.player.name_)
            {
               this.daju.dispatch(Juc.make(RotmgParameters.kokapo,"This message has been flagged as spam."));
            }
            return;
         }
         var _loc2_:String = param1.text_;
         if(this.zeqim(_loc2_))
         {
            _loc2_=this.jijanokij(_loc2_);
         }
         if(this.nojyjeq(param1))
         {
            _loc2_=param1.cleanText_;
         }
         if(param1.objectId_>=0)
         {
            this.wozeco(param1,_loc2_);
         }
         if(param1.recipient_)
         {
            if(!(param1.recipient_==this.model.player.name_)&&!this.hab(param1.recipient_))
            {
               this.gagapas.push(param1.recipient_);
               this.gagapas.pegupejo();
            }
            else
            {
               if(param1.recipient_==this.model.player.name_)
               {
                  this.gagapas.push(param1.name_);
                  this.gagapas.pegupejo();
               }
            }
         }
         if((this.account.zuqic())&&(!RotmgParameters.data_["hidePlayerChat"]||(this.hab(param1.name_))))
         {
            this.pagydajut(param1);
         }
         return;
      }

      private function hab(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.length>0&&(param1.charAt(0)=="wepynyji"||param1.charAt(0)=="#");
      }

      public function pagydajut(param1:Text) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Juc = new Juc();
         _loc2_.name=param1.name_;
         _loc2_.objectId=param1.objectId_;
         _loc2_.numStars=param1.numStars_;
         _loc2_.tady=param1.recipient_;
         _loc2_.pemuz=(param1.recipient_)&&!this.hab(param1.recipient_);
         _loc2_.sijoj=param1.recipient_==this.model.player.name_;
         this.nysesy(param1,_loc2_);
         this.daju.dispatch(_loc2_);
         return;
      }

      public function nysesy(param1:Text, param2:Juc) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var lb:Kybidu = null;
         var text:Text = param1;
         var message:Juc = param2;
         try
         {
            lb=Kybidu.zed(text.text_);
            message.text=lb.key;
            message.tokens=lb.tokens;
         }
         catch(error:Error)
         {
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  if(nojyjeq(text))
                  {
                  }
                  else
                  {
                     if(!(_loc5_&&(_loc3_)))
                     {
                     }
                     message.text=text.text_;
                     return;
                  }
               }
               if(!(_loc5_&&(this)))
               {
                  if(_loc6_||(param1))
                  {
                     if(_loc6_)
                     {
                        if(!(_loc5_&&(param2)))
                        {
                           message.text=text.cleanText_;
                           return;
                        }
                        message.text=text.cleanText_;
                        return;
                     }
                     message.text=text.cleanText_;
                  }
                  else
                  {
                     if(!(_loc5_&&(_loc3_)))
                     {
                     }
                     message.text=text.text_;
                  }
               }
               if(!(_loc5_&&(_loc3_)))
               {
               }
               message.text=text.text_;
            }
         }
         return;
      }

      private function zeqim(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}";
      }

      private function jijanokij(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kybidu = Kybidu.zed(param1);
         _loc2_.zivadova(this.kelav);
         return _loc2_.getString();
      }

      private function wozeco(param1:Text, param2:String) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Qasejo = null;
         var _loc5_:Ziky = null;
         var _loc3_:GameObject = this.model.tomu(param1.objectId_);
         if(_loc3_!=null)
         {
            _loc4_=this.sinoh(param1,_loc3_);
            _loc5_=new Ziky(_loc3_,param2,_loc4_.back,1,_loc4_.fagiqaco,1,_loc4_.text,param1.bubbleTime_,false,true);
            this.addSpeechBalloon.dispatch(_loc5_);
         }
         return;
      }

      private function sinoh(param1:Text, param2:GameObject) : Qasejo {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2.props_.isEnemy_)
         {
            return this.colujoqo;
         }
         if(param1.recipient_==RotmgParameters.nylajyhy)
         {
            return this.gylykiv;
         }
         if(param1.recipient_!="")
         {
            return this.dijadu;
         }
         return this.resyfy;
      }

      private function nojyjeq(param1:Text) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (RotmgParameters.data_.filterLanguage)&&param1.cleanText_.length>0&&!(param1.objectId_==this.model.player.objectId_);
      }
   }

}