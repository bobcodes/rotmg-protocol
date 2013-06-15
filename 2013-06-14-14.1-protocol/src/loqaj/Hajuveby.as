package loqaj
{
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Bitmap;
   import hivysif.Pyzykyj;
   import flash.display.BitmapData;
   import pilage.Tope;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jediwip.Vofezuzy;


   public class Hajuveby extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hajuveby() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.rijitafut=new Bitmap();
         addChild(this.rijitafut);
         this.itemId=-1;
         return;
      }

      protected static const gediroc:Array = [new ColorMatrixFilter([0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,0.4,0.0,0.0,0.0,0.0,0.0,1,0.0])];

      private static const begatywy:Matrix = new Matrix();

      private static const zotiqota:Matrix = new function():Matrix
                                                   {
                                                   var _loc1_:* = new Matrix();
                                                   _loc1_.translate(10,5);
                                                   return _loc1_;
                                                   }();

      public var itemId:int;

      public var rijitafut:Bitmap;

      private var duqukyj:Pyzykyj;

      public function setDim(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         filters=param1?gediroc:null;
         return;
      }

      public function setType(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.itemId=param1;
         this.turecon();
         return;
      }

      public function turecon() : void {
         var [OFS2]_loc4_:* = [/OFS]true;
         var [OFS4]_loc5_:* = [/OFS]false;
         var [OFS11]_loc1_:BitmapData = [/OFS][OFS8]null[/OFS];
         var [OFS15]_loc2_:XML = [/OFS][OFS12]null[/OFS];
         var [OFS19]_loc3_:BitmapData = [/OFS][OFS16]null[/OFS];
         if(this.[OFS21]itemId[/OFS][OFS30]!=[/OFS][OFS24]Tope[/OFS].[OFS27]puheqah[/OFS])
         {
            [OFS49]_loc1_=[/OFS][OFS34]ObjectLibrary[/OFS].[OFS43]getRedrawnTextureFromType[/OFS][OFS43]([/OFS]this.[OFS37]itemId[/OFS][OFS43],[/OFS][OFS40]80[/OFS][OFS43],[/OFS]true[OFS43])[/OFS];
            [OFS65]_loc2_=[/OFS][OFS50]ObjectLibrary[/OFS].[OFS52]ziq[/OFS][this.[OFS56]itemId[/OFS]];
            if(([OFS66]_loc2_[/OFS])&&([OFS75]_loc2_[/OFS].[OFS79]hasOwnProperty[/OFS][OFS79]([/OFS][OFS76]"Doses"[/OFS][OFS79])[/OFS])&&(this.[OFS92]duqukyj[/OFS]))
            {
               [OFS107]_loc1_=[/OFS][OFS100]_loc1_[/OFS].[OFS101]clone[/OFS][OFS101]([/OFS][OFS101])[/OFS];
               [OFS142]_loc3_=[/OFS]this.[OFS109]duqukyj[/OFS].[OFS136]make[/OFS][OFS136]([/OFS][OFS124]new [/OFS][OFS124]Vofezuzy[/OFS][OFS124]([/OFS][OFS121]String[/OFS][OFS121]([/OFS][OFS116]_loc2_[/OFS].[OFS117]Doses[/OFS][OFS121])[/OFS][OFS124])[/OFS][OFS136],[/OFS][OFS127]12[/OFS][OFS136],[/OFS][OFS129]16777215[/OFS][OFS136],[/OFS]false[OFS136],[/OFS][OFS132]begatywy[/OFS][OFS136],[/OFS]false[OFS136])[/OFS];
               [OFS143]_loc1_[/OFS].[OFS148]draw[/OFS][OFS148]([/OFS][OFS144]_loc3_[/OFS][OFS148],[/OFS][OFS145]zotiqota[/OFS][OFS148])[/OFS];
            }
            this.[OFS152]rijitafut[/OFS].[OFS156]bitmapData[/OFS][OFS156]=[/OFS][OFS155]_loc1_[/OFS];
            this.[OFS160]rijitafut[/OFS].[OFS170]x[/OFS][OFS170]=[/OFS][OFS166]-[/OFS][OFS163]_loc1_[/OFS].[OFS164]width[/OFS][OFS169]/[/OFS][OFS167]2[/OFS];
            this.[OFS173]rijitafut[/OFS].[OFS183]y[/OFS][OFS183]=[/OFS][OFS179]-[/OFS][OFS176]_loc1_[/OFS].[OFS177]height[/OFS][OFS182]/[/OFS][OFS180]2[/OFS];
            [OFS188]visible[/OFS][OFS188]=[/OFS]true;
         }
         else
         {
            [OFS197]visible[/OFS][OFS197]=[/OFS]false;
         }
         [OFS199]return[/OFS];
      }

      public function dybujafon(param1:Pyzykyj) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.duqukyj=param1;
         return;
      }
   }

}