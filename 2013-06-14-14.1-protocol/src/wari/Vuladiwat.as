package wari
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import vysob.Dialog;
   import gokyc.Rud;
   import sijizoh.Duq;
   import pugem.Account;
   import flash.events.Event;
   import com.company.util.Bycaqa;
   import flash.display.Graphics;


   public class Vuladiwat extends Sprite
   {
      public function Vuladiwat(param1:Boolean) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.gakokedo=param1;
         this.cazepoj=new Shape();
         var _loc2_:Graphics = this.cazepoj.graphics;
         _loc2_.clear();
         _loc2_.beginFill(0,0.8);
         _loc2_.drawRect(0,0,800,600);
         _loc2_.endFill();
         addChild(this.cazepoj);
         this.load();
         return;
      }

      private var gakokedo:Boolean;

      private var cazepoj:Shape;

      private var wihe:Dialog;

      private var text_:String;

      private var nyreqyzy:Fysezoz;

      private var rijy:Pir;

      private var client:Rud;

      private function load() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Account = Duq.pamazo().getInstance(Account);
         this.client=Duq.pamazo().getInstance(Rud);
         this.client.complete.addOnce(this.mywo);
         this.client.sendRequest("/guild/getBoard",_loc1_.pedavitu());
         this.wihe=new Dialog(null,"Loading...",null,null,null);
         addChild(this.wihe);
         this.cazepoj.visible=false;
         return;
      }

      private function mywo(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.bobydi(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function bobydi(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cazepoj.visible=true;
         removeChild(this.wihe);
         this.wihe=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function show() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nyreqyzy=new Fysezoz(this.text_,this.gakokedo);
         this.nyreqyzy.addEventListener(Event.COMPLETE,this.rezy);
         this.nyreqyzy.addEventListener(Event.CHANGE,this.qyjamo);
         addChild(this.nyreqyzy);
         return;
      }

      private function reportError(param1:String) : void {
         return;
      }

      private function rezy(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }

      private function qyjamo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.nyreqyzy);
         this.nyreqyzy=null;
         this.rijy=new Pir(this.text_);
         this.rijy.addEventListener(Event.CANCEL,this.nabufovof);
         this.rijy.addEventListener(Event.COMPLETE,this.sut);
         addChild(this.rijy);
         return;
      }

      private function nabufovof(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeChild(this.rijy);
         this.rijy=null;
         this.show();
         return;
      }

      private function sut(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Account = Duq.pamazo().getInstance(Account);
         var _loc3_:Object = {board:this.rijy.hat()};
         Bycaqa.timokujo(_loc3_,_loc2_.pedavitu());
         this.client=Duq.pamazo().getInstance(Rud);
         this.client.complete.addOnce(this.cadyfov);
         this.client.sendRequest("/guild/setBoard",_loc3_);
         removeChild(this.rijy);
         this.rijy=null;
         this.wihe=new Dialog(null,"Saving...",null,null,null);
         addChild(this.wihe);
         this.cazepoj.visible=false;
         return;
      }

      private function cadyfov(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.dyvozicyh(param2);
         }
         else
         {
            this.lelewyza(param2);
         }
         return;
      }

      private function dyvozicyh(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cazepoj.visible=true;
         removeChild(this.wihe);
         this.wihe=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function lelewyza(param1:String) : void {
         return;
      }
   }

}