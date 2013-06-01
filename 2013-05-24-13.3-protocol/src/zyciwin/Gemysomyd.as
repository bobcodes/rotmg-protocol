package zyciwin
{
   import gag.Fijarih;
   import flash.display.LoaderInfo;
   import cyt.Zivovype;
   import nitotohyk.Zyqyt;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import komawowag.Becepog;
   import tycerinos.Wilirijuk;
   import flash.display.DisplayObject;


   public class Gemysomyd extends Fijarih
   {
      public function Gemysomyd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var zefy:Zivovype;

      public var dom:Zyqyt;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var qiqely:Becepog;

      private var kycusoqum:Wilirijuk;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("startTask");
         this.dom.zefy.addChild(this.zefy as DisplayObject);
         this.zefy.qefijo.addOnce(this.requestSessionTicket);
         this.zefy.load(this.info.parameters.steam_api_path);
         return;
      }

      private function requestSessionTicket() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qiqely.debug("requestSessionTicket");
         this.zefy.ratosuk.addOnce(this.wutov);
         this.zefy.requestSessionTicket();
         return;
      }

      private function wutov(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qiqely.debug("session received - isValid? {0}",[param1]);
         if(param1)
         {
            syjavimu(true);
         }
         else
         {
            this.kif();
         }
         return;
      }

      private function kif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kycusoqum=(this.kycusoqum)||(new Wilirijuk());
         this.kycusoqum.ok.addOnce(this.relodyhyv);
         this.naval.dispatch(this.kycusoqum);
         return;
      }

      private function relodyhyv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tusagecu.dispatch();
         this.requestSessionTicket();
         return;
      }
   }

}