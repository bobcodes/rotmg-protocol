package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Piq;
   import flash.display.LoaderInfo;
   import nukobi.Fozydo;
   import nitotohyk.Zyqyt;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import flash.system.Security;
   import flash.display.DisplayObject;


   public class Jaqagub extends Fijarih implements Piq
   {
      public function Jaqagub() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var zefy:Fozydo;

      public var local:Hogoh;

      public var dom:Zyqyt;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.info.parameters.kongregate_api_path;
         Security.allowDomain(_loc1_);
         this.dom.zefy.addChild(this.zefy as DisplayObject);
         this.zefy.qefijo.addOnce(this.gybyfo);
         this.zefy.load(_loc1_);
         return;
      }

      private function gybyfo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         syjavimu(true);
         return;
      }
   }

}