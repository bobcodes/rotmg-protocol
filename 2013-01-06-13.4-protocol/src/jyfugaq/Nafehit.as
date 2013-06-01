package jyfugaq
{
[CLASS753]   import syfuqycy.Gyz;
   import vofepimy.Sajojewi;
   import flash.display.LoaderInfo;
   import tizozowof.Fedyl;
   import wyzoz.Fasud;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import flash.system.Security;
   import flash.display.DisplayObject;


   public class Nafehit extends Gyz implements Sajojewi
   {
      public function Nafehit() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var lowemycu:Fedyl;

      public var local:Pesuqarut;

      public var myticuleg:Fasud;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.info.parameters.kongregate_api_path;
         Security.allowDomain(_loc1_);
         this.myticuleg.lowemycu.addChild(this.lowemycu as DisplayObject);
         this.lowemycu.viwov.addOnce(this.tyfivo);
         this.lowemycu.load(_loc1_);
         return;
      }

      private function tyfivo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}