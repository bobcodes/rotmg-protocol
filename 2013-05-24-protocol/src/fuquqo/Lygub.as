package fuquqo
{
   import aaa.rotmg.account.Account;
   import cuwyg.Nihuvi;
   import zubamyki.Sywyvu;
   import zubamyki.Mogedut;
   import byzany.Nagumy;
   import pepyca.Tazizo;
   import quqe.Text;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;
   import nec.Sire;
   import cuwyg.Dyqy;
   import com.company.assembleegameclient.objects.GameObject;


   public class Lygub extends Object
   {
      public function Lygub() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const codywezy:Gogub = new Gogub(14802908,16777215,5526612);

      private const bulicecy:Gogub = new Gogub(5644060,16549442,13484223);

      private const delik:Gogub = new Gogub(2493110,61695,13880567);

      private const wysah:Gogub = new Gogub(4098560,10944349,13891532);

      public var account:Account;

      public var model:Nihuvi;

      public var fyve:Sywyvu;

      public var addSpeechBalloon:Mogedut;

      public var vypyvehet:Nagumy;

      public var fuq:Tazizo;

      public function execute(param1:Text) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:String = param1.text_;
         if(Lacezuk.rusinela(param1.text_,param1.name_))
         {
            _loc3_=this.model.player.getName();
            if(_loc3_==param1.name_)
            {
               this.fyve.dispatch(Depagy.make(UserConfig.gez,"This message has been flagged as spam."));
            }
            return;
         }
         if(this.likobeh(_loc2_))
         {
            _loc2_=this.hyzeq(_loc2_);
         }
         if((UserConfig.data_.filterLanguage)&&(param1.cleanText_.length>0)&&!(param1.objectId_==this.model.player.objectId_))
         {
            _loc2_=param1.cleanText_;
         }
         if(param1.objectId_>=0)
         {
            this.byhas(param1,_loc2_);
         }
         if(param1.recipient_)
         {
            if(!(param1.recipient_==this.model.player.name_)&&!this.lykidoqy(param1.recipient_))
            {
               this.fuq.push(param1.recipient_);
            }
            else
            {
               if(param1.recipient_==this.model.player.name_)
               {
                  this.fuq.push(param1.name_);
               }
            }
         }
         if((this.account.bugi())&&(!UserConfig.data_["hidePlayerChat"]||(this.lykidoqy(param1.name_))))
         {
            this.seroq(param1);
         }
         return;
      }

      private function lykidoqy(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.length>0&&(param1.charAt(0)=="cogycylyb"||param1.charAt(0)=="#");
      }

      public function seroq(param1:Text) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Depagy = new Depagy();
         _loc2_.name=param1.name_;
         _loc2_.objectId=param1.objectId_;
         _loc2_.numStars=param1.numStars_;
         _loc2_.woqazus=param1.recipient_;
         _loc2_.tetyroky=(param1.recipient_)&&!this.lykidoqy(param1.recipient_);
         _loc2_.lituwe=param1.recipient_==this.model.player.name_;
         this.fiqun(param1,_loc2_);
         this.fyve.dispatch(_loc2_);
         return;
      }

      public function fiqun(param1:Text, param2:Depagy) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var lb:Sire = null;
         var text:Text = param1;
         var message:Depagy = param2;
         try
         {
            lb=Sire.quli(text.text_);
            message.text=lb.key;
            message.tokens=lb.tokens;
         }
         catch(error:Error)
         {
            if(_loc5_||(this))
            {
               message.text=text.text_;
            }
         }
         return;
      }

      private function likobeh(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}";
      }

      private function hyzeq(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sire = Sire.quli(param1);
         _loc2_.menyhaky(this.vypyvehet);
         return _loc2_.getString();
      }

      private function byhas(param1:Text, param2:String) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Gogub = null;
         var _loc5_:Dyqy = null;
         var _loc3_:GameObject = this.model.fag(param1.objectId_);
         if(_loc3_!=null)
         {
            _loc4_=this.lyfudelud(param1,_loc3_);
            _loc5_=new Dyqy(_loc3_,param2,_loc4_.back,1,_loc4_.hyrir,1,_loc4_.text,param1.bubbleTime_,false,true);
            this.addSpeechBalloon.dispatch(_loc5_);
         }
         return;
      }

      private function lyfudelud(param1:Text, param2:GameObject) : Gogub {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param2.props_.isEnemy_)
         {
            return this.bulicecy;
         }
         if(param1.recipient_==UserConfig.hepefur)
         {
            return this.wysah;
         }
         if(param1.recipient_!="")
         {
            return this.delik;
         }
         return this.codywezy;
      }
   }

}