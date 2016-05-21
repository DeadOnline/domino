xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}
Frame Box01 {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-2.036125,0.000000,0.000000,1.000000;;
 }
Mesh Box011 {
 98;
-15.527554;2.275899;-33.027554;,
-15.527554;2.275899;33.027554;,
15.527555;2.275899;33.027554;,
15.527555;2.275899;-33.027554;,
16.500000;7.500000;-34.000000;,
16.500000;7.500000;-2.427625;,
-16.500000;7.500000;-2.427625;,
-16.500000;7.500000;-34.000000;,
17.500000;0.000000;-35.000000;,
17.500000;6.500000;-35.000000;,
17.500000;6.500000;-35.000000;,
-17.500000;0.000000;-35.000000;,
-17.500000;6.500000;-35.000000;,
-17.500000;6.500000;-35.000000;,
17.500000;0.000000;35.000000;,
17.500000;6.500000;35.000000;,
17.500000;6.500000;35.000000;,
17.500000;6.500000;0.000000;,
17.500000;6.500000;-35.000000;,
17.500000;0.000000;-35.000000;,
-17.500000;0.000000;35.000000;,
-17.500000;6.500000;35.000000;,
-17.500000;6.500000;35.000000;,
17.500000;0.000000;35.000000;,
17.500000;6.500000;35.000000;,
-17.500000;0.000000;-35.000000;,
-17.500000;6.500000;-35.000000;,
-17.500000;6.500000;0.000000;,
-17.500000;6.500000;35.000000;,
-17.500000;0.000000;35.000000;,
-17.500000;0.000000;-35.000000;,
-17.500000;0.000000;35.000000;,
-15.527554;0.000000;33.027554;,
-15.527554;0.000000;-33.027554;,
17.500000;0.000000;35.000000;,
15.527555;0.000000;33.027554;,
17.500000;0.000000;-35.000000;,
15.527555;0.000000;-33.027554;,
-15.527554;0.000000;-33.027554;,
-15.527554;0.000000;33.027554;,
-15.527554;2.275899;33.027554;,
-15.527554;2.275899;-33.027554;,
-15.527554;0.000000;33.027554;,
15.527555;0.000000;33.027554;,
15.527555;2.275899;33.027554;,
-15.527554;2.275899;33.027554;,
15.527555;0.000000;33.027554;,
15.527555;0.000000;-33.027554;,
15.527555;2.275899;-33.027554;,
15.527555;2.275899;33.027554;,
15.527555;0.000000;-33.027554;,
-15.527554;0.000000;-33.027554;,
-15.527554;2.275899;-33.027554;,
15.527555;2.275899;-33.027554;,
-16.500000;7.500000;34.000000;,
-17.500000;6.500000;35.000000;,
-16.500000;7.500000;34.000000;,
-17.500000;6.500000;35.000000;,
-17.500000;6.500000;0.000000;,
-16.500000;7.500000;2.427625;,
17.500000;6.500000;35.000000;,
-17.500000;6.500000;35.000000;,
17.500000;6.500000;35.000000;,
-17.500000;6.500000;35.000000;,
-16.500000;7.500000;34.000000;,
16.500000;7.500000;34.000000;,
16.500000;7.500000;-34.000000;,
17.500000;6.500000;-35.000000;,
16.500000;7.500000;-34.000000;,
17.500000;6.500000;-35.000000;,
17.500000;6.500000;0.000000;,
16.500000;7.500000;-2.427625;,
-16.500000;7.500000;-34.000000;,
-17.500000;6.500000;-35.000000;,
17.500000;6.500000;-35.000000;,
16.500000;7.500000;-34.000000;,
16.500000;7.500000;34.000000;,
-16.500000;7.500000;34.000000;,
-16.500000;7.500000;2.427625;,
16.500000;7.500000;2.427625;,
-17.500000;6.500000;0.000000;,
-17.500000;6.500000;-35.000000;,
-17.500000;6.500000;0.000000;,
-17.500000;6.500000;-35.000000;,
-16.500000;7.500000;-34.000000;,
-16.500000;7.500000;-2.427625;,
17.500000;6.500000;0.000000;,
17.500000;6.500000;35.000000;,
16.500000;7.500000;34.000000;,
16.500000;7.500000;2.427625;,
-17.500000;6.500000;0.000000;,
-16.500000;7.500000;-2.427625;,
16.500000;7.500000;-2.427625;,
17.500000;6.500000;0.000000;,
17.500000;6.500000;0.000000;,
16.500000;7.500000;2.427625;,
-16.500000;7.500000;2.427625;,
-17.500000;6.500000;0.000000;;

 56;
3;2,1,0;,
3;0,3,2;,
3;6,5,4;,
3;4,7,6;,
3;10,9,8;,
3;10,8,11;,
3;13,12,10;,
3;13,10,11;,
3;16,15,14;,
3;17,16,14;,
3;18,17,14;,
3;18,14,19;,
3;22,21,20;,
3;22,20,23;,
3;24,22,23;,
3;27,26,25;,
3;28,27,25;,
3;28,25,29;,
3;32,31,30;,
3;30,33,32;,
3;35,34,31;,
3;31,32,35;,
3;37,36,34;,
3;34,35,37;,
3;33,30,36;,
3;36,37,33;,
3;40,39,38;,
3;38,41,40;,
3;44,43,42;,
3;42,45,44;,
3;48,47,46;,
3;46,49,48;,
3;52,51,50;,
3;50,53,52;,
3;55,55,54;,
3;58,57,56;,
3;59,58,56;,
3;61,60,60;,
3;64,63,62;,
3;64,62,65;,
3;67,67,66;,
3;70,69,68;,
3;71,70,68;,
3;74,73,72;,
3;72,75,74;,
3;78,77,76;,
3;76,79,78;,
3;81,81,80;,
3;84,83,82;,
3;85,84,82;,
3;88,87,86;,
3;86,89,88;,
3;92,91,90;,
3;90,93,92;,
3;96,95,94;,
3;94,97,96;;
MeshMaterialList {
 1;
 56;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
Material {
 0.313726;0.486275;0.576471;1.000000;;
2048.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"D 00.bmp";
}
 }
}

 MeshNormals {
 98;
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;0.707107;-0.707107;,
0.000000;1.000000;0.000000;,
0.000000;0.707107;-0.707107;,
0.000000;0.000000;-1.000000;,
0.000000;1.000000;0.000000;,
0.000000;0.707107;-0.707107;,
0.948683;0.316228;0.000000;,
0.000000;1.000000;0.000000;,
0.707107;0.707107;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
0.000000;0.707107;0.707107;,
0.000000;1.000000;0.000000;,
0.000000;0.447214;0.894427;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
0.000000;-1.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
1.000000;0.000000;0.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
0.000000;0.000000;-1.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
-1.000000;0.000000;0.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;0.707107;0.707107;,
0.000000;0.707107;0.707107;,
0.000000;0.707107;0.707107;,
0.000000;0.707107;0.707107;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.000000;0.707107;-0.707107;,
0.000000;0.707107;-0.707107;,
0.000000;0.707107;-0.707107;,
0.000000;0.707107;-0.707107;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
0.000000;1.000000;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
-0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.707107;0.707107;0.000000;,
0.000000;0.924626;0.380877;,
0.000000;0.924626;0.380877;,
0.000000;0.924626;0.380877;,
0.000000;0.924626;0.380877;,
0.000000;0.924626;-0.380877;,
0.000000;0.924626;-0.380877;,
0.000000;0.924626;-0.380877;,
0.000000;0.924626;-0.380877;;

 56;
3;2,1,0;,
3;0,3,2;,
3;6,5,4;,
3;4,7,6;,
3;10,9,8;,
3;10,8,11;,
3;13,12,10;,
3;13,10,11;,
3;16,15,14;,
3;17,16,14;,
3;18,17,14;,
3;18,14,19;,
3;22,21,20;,
3;22,20,23;,
3;24,22,23;,
3;27,26,25;,
3;28,27,25;,
3;28,25,29;,
3;32,31,30;,
3;30,33,32;,
3;35,34,31;,
3;31,32,35;,
3;37,36,34;,
3;34,35,37;,
3;33,30,36;,
3;36,37,33;,
3;40,39,38;,
3;38,41,40;,
3;44,43,42;,
3;42,45,44;,
3;48,47,46;,
3;46,49,48;,
3;52,51,50;,
3;50,53,52;,
3;55,55,54;,
3;58,57,56;,
3;59,58,56;,
3;61,60,60;,
3;64,63,62;,
3;64,62,65;,
3;67,67,66;,
3;70,69,68;,
3;71,70,68;,
3;74,73,72;,
3;72,75,74;,
3;78,77,76;,
3;76,79,78;,
3;81,81,80;,
3;84,83,82;,
3;85,84,82;,
3;88,87,86;,
3;86,89,88;,
3;92,91,90;,
3;90,93,92;,
3;96,95,94;,
3;94,97,96;;
 }
MeshTextureCoords {
 98;
0.559317;0.407282;,
0.008044;0.407282;,
0.008044;0.666457;,
0.559317;0.666457;,
0.625641;0.726508;,
0.625641;0.990000;,
0.901048;0.990000;,
0.901048;0.726508;,
0.308991;0.165928;,
0.308991;0.220175;,
0.308991;0.220175;,
0.601089;0.165928;,
0.601089;0.220175;,
0.601089;0.220175;,
0.308991;0.321590;,
0.308991;0.375836;,
0.308991;0.375836;,
0.601089;0.375836;,
0.893187;0.375836;,
0.893187;0.321590;,
0.592718;0.612210;,
0.592718;0.666457;,
0.592718;0.666457;,
0.884816;0.612210;,
0.884816;0.666457;,
0.308991;0.243759;,
0.308991;0.298006;,
0.601089;0.298006;,
0.893187;0.298006;,
0.893187;0.243759;,
0.594196;0.697902;,
0.010000;0.697902;,
0.026461;0.714363;,
0.577735;0.714363;,
0.010000;0.990000;,
0.026461;0.973539;,
0.594196;0.990000;,
0.577735;0.973539;,
0.860264;0.080773;,
0.308991;0.080773;,
0.308991;0.099767;,
0.860264;0.099767;,
0.269175;0.069766;,
0.010000;0.069766;,
0.010000;0.088760;,
0.269175;0.088760;,
0.860264;0.123351;,
0.308991;0.123351;,
0.308991;0.142344;,
0.860264;0.142344;,
0.568166;0.038195;,
0.308991;0.038195;,
0.308991;0.057189;,
0.568166;0.057189;,
0.876471;0.436971;,
0.884816;0.425169;,
0.876471;0.436971;,
0.884816;0.425169;,
0.592718;0.425169;,
0.612979;0.436971;,
0.884816;0.460555;,
0.592718;0.460555;,
0.884816;0.460555;,
0.592718;0.460555;,
0.601064;0.472358;,
0.876471;0.472358;,
0.875502;0.021803;,
0.883848;0.010000;,
0.875502;0.021803;,
0.883848;0.010000;,
0.591750;0.010000;,
0.612010;0.021803;,
0.876471;0.543131;,
0.884816;0.531328;,
0.592718;0.531328;,
0.601064;0.543131;,
0.010000;0.375836;,
0.285407;0.375836;,
0.285407;0.112344;,
0.010000;0.112344;,
0.883848;0.045386;,
0.591750;0.045386;,
0.883848;0.045386;,
0.591750;0.045386;,
0.600095;0.057189;,
0.863588;0.057189;,
0.884816;0.495942;,
0.592718;0.495942;,
0.601064;0.507744;,
0.864556;0.507744;,
0.624672;0.198263;,
0.633018;0.220175;,
0.908425;0.220175;,
0.916770;0.198263;,
0.592718;0.566715;,
0.601064;0.588626;,
0.876471;0.588626;,
0.884816;0.566715;;
}
}
 }
