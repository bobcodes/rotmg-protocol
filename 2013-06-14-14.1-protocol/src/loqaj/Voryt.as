package loqaj
{
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import pilage.Tope;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.objects.Player;
   import copano.Byz;


   public class Voryt extends Kuk
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Voryt(param1:int, param2:Byz, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const gejeholaz:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.rojezukul(3552822));

      public var vor:Bitmap;

      public var itemType:int;

      private var vynadet:int;

      override public function canHoldItem(param1:int) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1<=0||this.itemType==ObjectLibrary.qivoti(param1);
      }

      public function setType(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:BitmapData = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         switch(null)
         {
            case Tope.tehi:
               break;
            case Tope.kykeb:
               _loc2_=AssetLibrary.tem("lofiObj5",48);
               break;
            case Tope.valasu:
               _loc2_=AssetLibrary.tem("lofiObj5",96);
               break;
            case Tope.dof:
               _loc2_=AssetLibrary.tem("lofiObj5",80);
               break;
            case Tope.nuzebu:
               _loc2_=AssetLibrary.tem("lofiObj6",80);
               break;
            case Tope.juna:
               _loc2_=AssetLibrary.tem("lofiObj6",112);
               break;
            case Tope.nuvep:
               _loc2_=AssetLibrary.tem("lofiObj5",0);
               break;
            case Tope.ceci:
               _loc2_=AssetLibrary.tem("lofiObj5",32);
               break;
            case Tope.pyfisete:
               _loc2_=AssetLibrary.tem("lofiObj5",64);
               break;
            case Tope.fajyjubo:
               _loc2_=AssetLibrary.tem("lofiObj",44);
               break;
            case Tope.bajuqesu:
               _loc2_=AssetLibrary.tem("lofiObj6",64);
               break;
            case Tope.nona:
               _loc2_=AssetLibrary.tem("lofiObj6",160);
               break;
            case Tope.qiw:
               _loc2_=AssetLibrary.tem("lofiObj6",32);
               break;
            case Tope.waca:
               _loc2_=AssetLibrary.tem("lofiObj5",16);
               break;
            case Tope.das:
               _loc2_=AssetLibrary.tem("lofiObj6",48);
               break;
            case Tope.rolyl:
               _loc2_=AssetLibrary.tem("lofiObj6",96);
               break;
            case Tope.pevyb:
               _loc2_=AssetLibrary.tem("lofiObj5",112);
               break;
            case Tope.juse:
               _loc2_=AssetLibrary.tem("lofiObj6",128);
               break;
            case Tope.gose:
               _loc2_=AssetLibrary.tem("lofiObj6",0);
               break;
            case Tope.zuribygi:
               _loc2_=AssetLibrary.tem("lofiObj6",16);
               break;
            case Tope.pul:
               _loc2_=AssetLibrary.tem("lofiObj6",144);
               break;
            case Tope.jegysyh:
               _loc2_=AssetLibrary.tem("lofiObj6",176);
               break;
            case Tope.rypuwoqid:
               _loc2_=AssetLibrary.tem("lofiObj6",192);
               break;
            case Tope.vabyjyf:
               _loc2_=AssetLibrary.tem("lofiObj3",540);
               break;
            case Tope.luliqiky:
               _loc2_=AssetLibrary.tem("lofiObj3",555);
               break;
         }
         if(_loc2_!=null)
         {
            this.vor=new Bitmap(_loc2_);
            this.vor.x=BORDER;
            this.vor.y=BORDER;
            this.vor.scaleX=4;
            this.vor.scaleY=4;
            this.vor.filters=[gejeholaz];
            addChildAt(this.vor,0);
         }
         this.itemType=param1;
         return;
      }

      override public function setItem(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = super.setItem(param1);
         if(_loc2_)
         {
            this.vor.visible=soqugarol.itemId<=0;
            this.sijeru();
         }
         return _loc2_;
      }

      private function sijeru() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:XML = null;
         this.vynadet=0;
         if(soqugarol.itemId>0)
         {
            _loc1_=ObjectLibrary.ziq[soqugarol.itemId];
            if((_loc1_)&&(_loc1_.hasOwnProperty("Usable")))
            {
               if(_loc1_.hasOwnProperty("MultiPhase"))
               {
                  this.vynadet=_loc1_.MpEndCost;
               }
               else
               {
                  this.vynadet=_loc1_.MpCost;
               }
            }
         }
         return;
      }

      public function updateDim(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         soqugarol.setDim((param1)&&param1.nydyry<this.vynadet);
         return;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vor.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vor.visible=soqugarol.itemId<=0;
         return;
      }

      override protected function getBackgroundColor() : int {
         return 4539717;
      }
   }

}