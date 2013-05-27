package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;


   public class BasicObject extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BasicObject() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wakutozy=new Vector.<Number>();
         this.kiwujacam=new Vector.<Number>();
         super();
         this.clear();
         return;
      }

      private static var cakiw:int = 0;

      public static function mej() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return 2130706432|cakiw++;
      }

      public var map_:Map;

      public var garatecif:Square;

      public var objectId_:int;

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var kyjon:Boolean;

      public var qofeleqir:Boolean;

      public var wakutozy:Vector.<Number>;

      public var kiwujacam:Vector.<Number>;

      public var sortVal_:Number;

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.garatecif=null;
         this.objectId_=-1;
         this.x_=0;
         this.y_=0;
         this.z_=0;
         this.kyjon=false;
         this.qofeleqir=false;
         this.wakutozy.length=0;
         this.kiwujacam.length=0;
         this.sortVal_=0.0;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_=null;
         this.garatecif=null;
         this.wakutozy=null;
         this.kiwujacam=null;
         return;
      }

      public function update(param1:int, param2:int) : Boolean {
         return true;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         return;
      }

      public function drawShadow(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         return;
      }

      public function cude(param1:Wypyj) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wakutozy.length=0;
         this.wakutozy.push(this.x_,this.y_,0,this.x_,this.y_,this.z_);
         this.kiwujacam.length=0;
         param1.wToS_.transformVectors(this.wakutozy,this.kiwujacam);
         this.sortVal_=this.kiwujacam[1];
         return;
      }

      public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.map_=param1;
         this.garatecif=this.map_.getSquare(param2,param3);
         if(this.garatecif==null)
         {
            this.map_=null;
            return false;
         }
         this.x_=param2;
         this.y_=param3;
         return true;
      }

      public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.garatecif=null;
         return;
      }
   }

}