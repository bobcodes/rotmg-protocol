package sasigeka
{
   import flash.display.Loader;
   import namewo.Wudes;
   import flash.display.DisplayObject;
   import namewo.Woz;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;


   public class Jujam extends Foga
   {
      public function Jujam() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader=addChild(new Loader()) as Loader;
         super();
         return;
      }

      private var loader:Loader;

      private var fyvogany:Wudes;

      override public function get content() : DisplayObject {
         return this.loader.content;
      }

      override public function get contentLoaderInfo() : Wudes {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.fyvogany==null)
         {
            this.fyvogany=new Woz();
            this.fyvogany.loaderInfo=this.loader.contentLoaderInfo;
         }
         return this.fyvogany;
      }

      override public function load(param1:URLRequest, param2:LoaderContext=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.loader.load(param1,param2);
         return;
      }

      override public function unload() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader.unload();
         return;
      }
   }

}