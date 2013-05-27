package zelym
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import nas.Dialog;
   import aaa.rotmg.net.HttpClientWrapper;
   import jag.Giq;
   import aaa.rotmg.account.Account;
   import flash.events.Event;
   import com.company.util.Vuwewuc;
   import flash.display.Graphics;


   public class Hefekoq extends Sprite
   {
      public function Hefekoq(param1:Boolean) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.myvihu=param1;
         this.daf=new Shape();
         var _loc2_:Graphics = this.daf.graphics;
         _loc2_.clear();
         _loc2_.beginFill(0,0.8);
         _loc2_.drawRect(0,0,800,600);
         _loc2_.endFill();
         addChild(this.daf);
         this.load();
         return;
      }

      private var myvihu:Boolean;

      private var daf:Shape;

      private var pokuj:Dialog;

      private var text_:String;

      private var nifoloc:Kajuqiqy;

      private var nuzu:Bawisedi;

      private var client:HttpClientWrapper;

      private function load() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Account = Giq.kid().getInstance(Account);
         this.client=Giq.kid().getInstance(HttpClientWrapper);
         this.client.complete.addOnce(this.ciwy);
         this.client.sendRequest("/guild/getBoard",_loc1_.venupog());
         this.pokuj=new Dialog(null,"Loading...",null,null,null);
         addChild(this.pokuj);
         this.daf.visible=false;
         return;
      }

      private function ciwy(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.tibu(param2);
         }
         else
         {
            this.reportError(param2);
         }
         return;
      }

      private function tibu(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.daf.visible=true;
         removeChild(this.pokuj);
         this.pokuj=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function show() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nifoloc=new Kajuqiqy(this.text_,this.myvihu);
         this.nifoloc.addEventListener(Event.COMPLETE,this.kytoseju);
         this.nifoloc.addEventListener(Event.CHANGE,this.vytej);
         addChild(this.nifoloc);
         return;
      }

      private function reportError(param1:String) : void {
         return;
      }

      private function kytoseju(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         parent.removeChild(this);
         return;
      }

      private function vytej(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.nifoloc);
         this.nifoloc=null;
         this.nuzu=new Bawisedi(this.text_);
         this.nuzu.addEventListener(Event.CANCEL,this.kubizi);
         this.nuzu.addEventListener(Event.COMPLETE,this.reryh);
         addChild(this.nuzu);
         return;
      }

      private function kubizi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeChild(this.nuzu);
         this.nuzu=null;
         this.show();
         return;
      }

      private function reryh(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Account = Giq.kid().getInstance(Account);
         var _loc3_:Object = {board:this.nuzu.geheza()};
         Vuwewuc.hohohev(_loc3_,_loc2_.venupog());
         this.client=Giq.kid().getInstance(HttpClientWrapper);
         this.client.complete.addOnce(this.sefakiho);
         this.client.sendRequest("/guild/setBoard",_loc3_);
         removeChild(this.nuzu);
         this.nuzu=null;
         this.pokuj=new Dialog(null,"Saving...",null,null,null);
         addChild(this.pokuj);
         this.daf.visible=false;
         return;
      }

      private function sefakiho(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.zumyvado(param2);
         }
         else
         {
            this.dudyk(param2);
         }
         return;
      }

      private function zumyvado(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.daf.visible=true;
         removeChild(this.pokuj);
         this.pokuj=null;
         this.text_=param1;
         this.show();
         return;
      }

      private function dudyk(param1:String) : void {
         return;
      }
   }

}