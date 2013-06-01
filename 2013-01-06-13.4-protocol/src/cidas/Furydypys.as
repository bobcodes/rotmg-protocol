package cidas
{
[CLASS903]   import flash.display.Loader;
   import zoqu.Gubim;
   import flash.display.DisplayObject;
   import zoqu.Nyjivyra;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;


   public class Furydypys extends Hyruqo
   {
      public function Furydypys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader=addChild(new Loader()) as Loader;
         super();
         return;
      }

      private var loader:Loader;

      private var vagaryhib:Gubim;

      override public function get content() : DisplayObject {
         return this.loader.content;
      }

      override public function get contentLoaderInfo() : Gubim {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vagaryhib==null)
         {
            this.vagaryhib=new Nyjivyra();
            this.vagaryhib.loaderInfo=this.loader.contentLoaderInfo;
         }
         return this.vagaryhib;
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
[/CLASS]
}