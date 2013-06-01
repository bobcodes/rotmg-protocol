package com.company.assembleegameclient.map
{
   import com.company.assembleegameclient.objects.Sirador;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import com.company.assembleegameclient.objects.Jerakupej;


   public class Polipyva extends Object
   {
      public function Polipyva(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.animate_=new Lepuro();
         super();
         this.type_=int(param1.@type);
         this.id_=String(param1.@id);
         this.pasi=param1.hasOwnProperty("NoWalk");
         if(param1.hasOwnProperty("MinDamage"))
         {
            this.minDamage_=int(param1.MinDamage);
         }
         if(param1.hasOwnProperty("MaxDamage"))
         {
            this.maxDamage_=int(param1.MaxDamage);
         }
         this.push_=param1.hasOwnProperty("Push");
         if(param1.hasOwnProperty("Animate"))
         {
            this.animate_.mewez(XML(param1.Animate));
         }
         if(param1.hasOwnProperty("BlendPriority"))
         {
            this.cyp=int(param1.BlendPriority);
         }
         if(param1.hasOwnProperty("CompositePriority"))
         {
            this.runuhe=int(param1.CompositePriority);
         }
         if(param1.hasOwnProperty("Speed"))
         {
            this.speed_=Number(param1.Speed);
         }
         this.mimacegus=param1.hasOwnProperty("XOffset")?Number(param1.XOffset):0;
         this.zogawuzo=param1.hasOwnProperty("YOffset")?Number(param1.YOffset):0;
         this.push_=param1.hasOwnProperty("Push");
         this.sink_=param1.hasOwnProperty("Sink");
         this.teqonebi=param1.hasOwnProperty("Sinking");
         this.zuzawyci=param1.hasOwnProperty("RandomOffset");
         if(param1.hasOwnProperty("Edge"))
         {
            this.tusazoqog=true;
            this.howot=new Jerakupej(XML(param1.Edge));
            if(param1.hasOwnProperty("Corner"))
            {
               this.fovabole=new Jerakupej(XML(param1.Corner));
            }
            if(param1.hasOwnProperty("InnerCorner"))
            {
               this.jyhumol=new Jerakupej(XML(param1.InnerCorner));
            }
         }
         this.byb=param1.hasOwnProperty("SameTypeEdgeMode");
         if(param1.hasOwnProperty("Top"))
         {
            this.foheha=new Jerakupej(XML(param1.Top));
            this.vaqomyrac=new Lepuro();
            if(param1.hasOwnProperty("TopAnimate"))
            {
               this.vaqomyrac.mewez(XML(param1.TopAnimate));
            }
         }
         return;
      }

      public var type_:int;

      public var id_:String;

      public var pasi:Boolean = true;

      public var minDamage_:int = 0;

      public var maxDamage_:int = 0;

      public var animate_:Lepuro;

      public var cyp:int = -1;

      public var runuhe:int = 0;

      public var speed_:Number = 1.0;

      public var mimacegus:Number = 0;

      public var zogawuzo:Number = 0;

      public var push_:Boolean = false;

      public var sink_:Boolean = false;

      public var teqonebi:Boolean = false;

      public var zuzawyci:Boolean = false;

      public var tusazoqog:Boolean = false;

      private var howot:Sirador = null;

      private var fovabole:Sirador = null;

      private var jyhumol:Sirador = null;

      private var pesubavit:Vector.<BitmapData> = null;

      private var qiharirur:Vector.<BitmapData> = null;

      public var byb:Boolean = false;

      public var foheha:Sirador = null;

      public var vaqomyrac:Lepuro = null;

      public function likejel() : Vector.<BitmapData> {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.tusazoqog||!(this.pesubavit==null))
         {
            return this.pesubavit;
         }
         this.pesubavit=new Vector.<BitmapData>(9);
         this.pesubavit[3]=this.howot.getTexture(0);
         this.pesubavit[1]=BitmapUtil.fizyt(this.pesubavit[3],1);
         this.pesubavit[5]=BitmapUtil.fizyt(this.pesubavit[3],2);
         this.pesubavit[7]=BitmapUtil.fizyt(this.pesubavit[3],3);
         if(this.fovabole!=null)
         {
            this.pesubavit[0]=this.fovabole.getTexture(0);
            this.pesubavit[2]=BitmapUtil.fizyt(this.pesubavit[0],1);
            this.pesubavit[8]=BitmapUtil.fizyt(this.pesubavit[0],2);
            this.pesubavit[6]=BitmapUtil.fizyt(this.pesubavit[0],3);
         }
         return this.pesubavit;
      }

      public function fajohizo() : Vector.<BitmapData> {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.jyhumol==null||!(this.qiharirur==null))
         {
            return this.qiharirur;
         }
         this.qiharirur=this.pesubavit.concat();
         this.qiharirur[0]=this.jyhumol.getTexture(0);
         this.qiharirur[2]=BitmapUtil.fizyt(this.qiharirur[0],1);
         this.qiharirur[8]=BitmapUtil.fizyt(this.qiharirur[0],2);
         this.qiharirur[6]=BitmapUtil.fizyt(this.qiharirur[0],3);
         return this.qiharirur;
      }
   }

}