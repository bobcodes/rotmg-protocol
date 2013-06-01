package jebaraqeq
{
   import flash.utils.Dictionary;
   import cyqef.Naseqigos;
   import komawowag.Net;
   import komawowag.Becepog;
   import cyqef.Nocebazy;


   public class Bunerazo extends Object
   {
      public function Bunerazo(param1:Net) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.kavev=param1;
         this.hycekuj=this.kavev.peroq(this);
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Bunerazo);

      private const cyhirim:Dictionary = new Dictionary(true);

      private const wila:Naseqigos = new Nocebazy();

      private var kavev:Net;

      private var hycekuj:Becepog;

      public function giqijabuf(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = null;
         if(param1 is Class)
         {
         }
         else
         {
            _loc2_=this.wila.dofumab(param1);
            if(this.cyhirim[_loc2_])
            {
               return;
            }
            this.hycekuj.debug("Installing extension {0}",[param1]);
            this.cyhirim[_loc2_]=true;
            param1.extend(this.kavev);
         }
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }
   }

}