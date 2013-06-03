package tuzopite
{
[CLASS1138]   import leselo.Account;
   import guvakipe.Civ;
   import tusidywuq.Selamehu;
   import tusidywuq.Zacu;
   import koqeko.Kevut;
   import setuv.Mocor;
   import mywyvuryw.Text;
   import aaa.Parameters;
   import setuv.Vityvu;
   import totuhare.Zufi;
   import guvakipe.Rakawidu;
   import com.company.assembleegameclient.objects.GameObject;


   public class Lez extends Object
   {
      public function Lez() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const defewaky:Rezida = new Rezida(14802908,16777215,5526612);

      private const winig:Rezida = new Rezida(5644060,16549442,13484223);

      private const pijenorad:Rezida = new Rezida(2493110,61695,13880567);

      private const cev:Rezida = new Rezida(4098560,10944349,13891532);

      public var account:Account;

      public var model:Civ;

      public var rivu:Selamehu;

      public var addSpeechBalloon:Zacu;

      public var riquneg:Kevut;

      public var leriju:Mocor;

      public var cynyduci:Fajo;

      public function execute(param1:Text) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.text_;
         if(this.nuzag(_loc2_))
         {
            _loc2_=this.vuheqyl(_loc2_);
         }
         if((Parameters.data_.filterLanguage)&&(param1.cleanText_.length>0)&&!(param1.objectId_==this.model.player.objectId_))
         {
            _loc2_=param1.cleanText_;
         }
         if(param1.objectId_>=0)
         {
            this.taz(param1,_loc2_);
         }
         if(param1.recipient_)
         {
            if(!(param1.recipient_==this.model.player.name_)&&!this.tenek(param1.recipient_))
            {
               this.leriju.push(param1.recipient_);
            }
            else
            {
               if(param1.recipient_==this.model.player.name_)
               {
                  this.leriju.push(param1.name_);
               }
            }
         }
         if((this.account.tuq())&&(!Parameters.data_["hidePlayerChat"]||(this.tenek(param1.name_))))
         {
            this.fosohugyw(param1);
         }
         return;
      }

      private function tenek(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.length>0&&(param1.charAt(0)=="fozamypyj"||param1.charAt(0)=="#");
      }

      public function fosohugyw(param1:Text) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vityvu = new Vityvu();
         _loc2_.name=param1.name_;
         _loc2_.objectId=param1.objectId_;
         _loc2_.numStars=param1.numStars_;
         _loc2_.gisiqiwa=param1.recipient_;
         _loc2_.jofytap=(param1.recipient_)&&!this.tenek(param1.recipient_);
         _loc2_.nyjukyfyn=param1.recipient_==this.model.player.name_;
         this.forusaj(param1,_loc2_);
         this.rivu.dispatch(_loc2_);
         return;
      }

      public function forusaj(param1:Text, param2:Vityvu) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var lb:Zufi = null;
         var text:Text = param1;
         var message:Vityvu = param2;
         try
         {
            lb=Zufi.haho(text.text_);
            message.text=lb.key;
            message.tokens=lb.tokens;
         }
         catch(error:Error)
         {
            if(!_loc6_)
            {
               message.text=text.text_;
            }
         }
         return;
      }

      private function nuzag(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}";
      }

      private function vuheqyl(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zufi = Zufi.haho(param1);
         _loc2_.suhuvy(this.riquneg);
         return _loc2_.getString();
      }

      private function taz(param1:Text, param2:String) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Rezida = null;
         var _loc5_:Rakawidu = null;
         var _loc3_:GameObject = this.model.fujofegyl(param1.objectId_);
         if(_loc3_!=null)
         {
            _loc4_=this.syguj(param1,_loc3_);
            _loc5_=new Rakawidu(_loc3_,param2,_loc4_.back,1,_loc4_.jelozu,1,_loc4_.text,param1.bubbleTime_,false,true);
            this.addSpeechBalloon.dispatch(_loc5_);
         }
         return;
      }

      private function syguj(param1:Text, param2:GameObject) : Rezida {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param2.props_.isEnemy_)
         {
            return this.winig;
         }
         if(param1.recipient_==Parameters.giwekaser)
         {
            return this.cev;
         }
         if(param1.recipient_!="")
         {
            return this.pijenorad;
         }
         return this.defewaky;
      }
   }
[/CLASS]
}