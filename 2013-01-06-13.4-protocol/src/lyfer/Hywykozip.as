package lyfer
{
[CLASS723]   import syfuqycy.Gyz;
   import flash.display.LoaderInfo;
   import zib.Bebemed;
   import wyzoz.Fasud;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import bikyvym.Voduzak;
   import tegopegyz.Fotu;
   import flash.display.DisplayObject;


   public class Hywykozip extends Gyz
   {
      public function Hywykozip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var lowemycu:Bebemed;

      public var myticuleg:Fasud;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var wop:Voduzak;

      private var vit:Fotu;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("startTask");
         this.myticuleg.lowemycu.addChild(this.lowemycu as DisplayObject);
         this.lowemycu.viwov.addOnce(this.requestSessionTicket);
         this.lowemycu.load(this.info.parameters.steam_api_path);
         return;
      }

      private function requestSessionTicket() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("requestSessionTicket");
         this.lowemycu.wypesic.addOnce(this.tyhaw);
         this.lowemycu.requestSessionTicket();
         return;
      }

      private function tyhaw(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.debug("session received - isValid? {0}",[param1]);
         if(param1)
         {
            pylebodyq(true);
         }
         else
         {
            this.mehovif();
         }
         return;
      }

      private function mehovif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vit=(this.vit)||(new Fotu());
         this.vit.ok.addOnce(this.myworo);
         this.lyhog.dispatch(this.vit);
         return;
      }

      private function myworo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.madeve.dispatch();
         this.requestSessionTicket();
         return;
      }
   }
[/CLASS]
}