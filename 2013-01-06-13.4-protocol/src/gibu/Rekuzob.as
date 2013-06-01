package gibu
{
[CLASS1835]   import flash.display.Sprite;
   import flash.display.Shape;
   import cejyva.Dialog;
   import qiwyz.Bozakehy;
   import jutesesel.Qibigagal;
   import leselo.Account;
   import flash.events.Event;
   import com.company.util.Vokekizac;
   import flash.display.Graphics;


   public class Rekuzob extends Sprite
   {
      public function Rekuzob(param1:Boolean) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.mitecy=param1;
         this.nykezyhac=new Shape();
         var _loc2_:Graphics = this.nykezyhac.graphics;
         _loc2_.clear();
         _loc2_.beginFill(0,0.8);
         _loc2_.drawRect(0,0,800,600);
         _loc2_.endFill();
         addChild(this.nykezyhac);
         this.load();
         return;
      }

      private var mitecy:Boolean;

      private var nykezyhac:Shape;

      private var telilun:Dialog;

      private var text_:String;

      private var gej:Vamynov;

      private var sorofak:Zaresy;

      private var client:Bozakehy;

      private function load() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Account = Qibigagal.husuha().getInstance(Account);
         this.client=Qibigagal.husuha().getInstance(Bozakehy);
         this.client.complete.addOnce(this.zohoh);
         this.client.sendRequest("/guild/getBoard",_loc1_.dera());
         this.telilun=new Dialog(null,"Loading...",null,null,null);
         addChild(this.telilun);
         this.nykezyhac.visible=false;
         return;
      }

      private function zohoh(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.rasemiki(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function rasemiki(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nykezyhac.visible=true;
         removeChild(this.telilun);
         this.telilun=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function show() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gej=new Vamynov(this.text_,this.mitecy);
         this.gej.addEventListener(Event.COMPLETE,this.zoqewora);
         this.gej.addEventListener(Event.CHANGE,this.quhu);
         addChild(this.gej);
         return;
      }

      private function reportError(param1:String) : void {
         return;
      }

      private function zoqewora(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }

      private function quhu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.gej);
         this.gej=null;
         this.sorofak=new Zaresy(this.text_);
         this.sorofak.addEventListener(Event.CANCEL,this.jabisew);
         this.sorofak.addEventListener(Event.COMPLETE,this.humuz);
         addChild(this.sorofak);
         return;
      }

      private function jabisew(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.sorofak);
         this.sorofak=null;
         this.show();
         return;
      }

      private function humuz(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Account = Qibigagal.husuha().getInstance(Account);
         var _loc3_:Object = {board:this.sorofak.kym()};
         Vokekizac.jugajoj(_loc3_,_loc2_.dera());
         this.client=Qibigagal.husuha().getInstance(Bozakehy);
         this.client.complete.addOnce(this.puqufer);
         this.client.sendRequest("/guild/setBoard",_loc3_);
         removeChild(this.sorofak);
         this.sorofak=null;
         this.telilun=new Dialog(null,"Saving...",null,null,null);
         addChild(this.telilun);
         this.nykezyhac.visible=false;
         return;
      }

      private function puqufer(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.taqazyjyg(param2);
         }
         else
         {
            this.hylyw(param2);
         }
         return;
      }

      private function taqazyjyg(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nykezyhac.visible=true;
         removeChild(this.telilun);
         this.telilun=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function hylyw(param1:String) : void {
         return;
      }
   }
[/CLASS]
}