// shaders for sirius
// 

// -------------------- Sky box
// environment map "Top of the Heap" by Mighty Pete
textures/sirius/top-of-the-heap
{
      qer_editorimage env/sirius/top-of-the-heap/top-of-the-heap-small.jpg
      surfaceparm noimpact
      surfaceparm nolightmap
      surfaceparm sky
      //q3map_sun   .5 .37 .22 300 265 15
      q3map_surfacelight 50

     skyparms env/sirius/top-of-the-heap/top-of-the-heap512 - -
}


// -------------------- Glass -----------------------

// by Ingar - last changes 2007-08-22
textures/sirius/glass
{
        qer_editorimage textures/sirius/glass.tga
        qer_trans .5
        surfaceparm nolightmap
        surfaceparm trans
//	surfaceparm nomarks
	surfaceparm playerclip
        {
                map textures/sirius/glass.tga
                blendfunc filter
        }
        {
                map textures/sirius/glass-env.tga
                tcGen environment
                blendfunc gl_dst_color gl_src_alpha
        }
        {
                map $lightmap
                rgbgen identity
                blendfunc gl_dst_color gl_zero
        }
}

// -------------------- Grates & Floors -------------------------------

// by evillair
textures/sirius/e6bsegrtflr256
{
        qer_editorimage textures/sirius/e6bsegrtflr256.tga
        surfaceparm trans
        surfaceparm nomarks
        surfaceparm metalsteps
        cull none

        {
                map textures/sirius/e6bsegrtflr256.tga
                alphafunc GE128
                depthwrite
        }
        {
                map $lightmap
                depthfunc equal
                blendfunc filter
        }
}

textures/sirius/e8clangfloor05:q3map
{
	surfaceparm metalsteps
}

// -------------------- Metal ---------------------------------------

textures/sirius/tin_s
{
	qer_editorimage textures/sirius/tin.tga
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/sirius/tin.tga
		blendfunc gl_dst_color gl_src_alpha
		rgbGen identity
		alphaGen lightingSpecular
	}
}

// -------------------- Fans ----------------------------------------

// by Evillair
textures/sirius/e6metalfan_s2
{
	qer_editorimage textures/sirius/e6metalfan.tga

	{
		map textures/sirius/e6metalfan_blade.tga
		tcmod rotate 5000
	}
	{
		map textures/sirius/e6metalfan.tga
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

// -------------------- Panels / Decoration -------------------------

textures/sirius/panel
{
	qer_editorimage textures/sirius/panel.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/panel.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/panel.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// glowing support stripe (niveus)
textures/sirius/wsupport12
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/wsupport12.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/wsupport12.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc GL_ONE GL_ONE
	}
}

// -------------------- Patches special -----------------------------

// shader by Ingar
textures/sirius/e8basictrim2_red_cullnone
{
        qer_editorimage textures/sirius/e8basictrim2_red.tga
	cull none
        {
                map textures/sirius/e8basictrim2_red.tga
        }
        {
                map $lightmap
                blendfunc filter
        }
}


// -------------------- Ladder --------------------------------------

// by Jex or Timbo
textures/sirius/ladder {
	qer_trans .75
	qer_editorimage textures/sirius/ladder.tga
	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm playerclip
}

// -------------------- Nonsolid ------------------------------------
textures/sirius/mtl_rst_nosolid
{
	qer_editorimage textures/sirius/mtl_rst.tga
	surfaceparm nonsolid
	{
                      map $lightmap
                      rgbGen identity
        }

	{
		map textures/sirius/mtl_rst.tga
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

// -------------------- Lights  -------------------------------------

// evillairs red striplight
textures/sirius/e6redlight
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
        q3map_surfacelight 100
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga

        }
}

// evillairs red striplight
textures/sirius/e6redlight_bright
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
        q3map_surfacelight 2500
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga

        }
}

// evillairs red striplight
textures/sirius/e6redlight_blink
{
        qer_editorimage textures/sirius/e6basicstrip_red.tga
//        q3map_surfacelight 5000
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_red.tga
		rgbGen wave square .5 .5 0 1

        }
}

// evillairs white striplight
textures/sirius/e6whitelight
{
        qer_editorimage textures/sirius/e6basicstrip_white.tga
        q3map_surfacelight 100
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_white.tga

        }
}

// evillairs white striplight, bright light
textures/sirius/e6whitelight_bright
{
        qer_editorimage textures/sirius/e6basicstrip_white.tga
        q3map_surfacelight 2500
        surfaceparm nomarks
        surfaceparm nolightmap
        {
                map textures/sirius/e6basicstrip_white.tga

        }
}

// yellow light
textures/sirius/e8tinylight
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 950
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny yellow light 5k
textures/sirius/e8tinylight_5k
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny yellow light 10k
textures/sirius/e8tinylight_10k
{
	qer_editorimage textures/sirius/e8tinylight.jpg
	q3map_lightimage textures/sirius/e8tinylight.blend.jpg
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/e8tinylight.jpg
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylight.blend.jpg
		blendfunc add
	}
}

// tiny blue light 10k
textures/sirius/e8tinylightblue_s_10k
{
	qer_editorimage textures/sirius/e8tinylightblue.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/e8tinylightblue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/sirius/e8tinylightblue.blend.tga
		blendfunc add
	}
}

textures/sirius/proto_lightred_64_300
{
	qer_editorimage textures/sirius/proto_lightred_64.tga
	surfaceparm nomarks
	q3map_surfacelight 300
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/proto_lightred_64.tga
		blendFunc filter
		rgbGen identity
	}
        {
		map textures/sirius/proto_lightred_64.tga
		blendFunc add
	}
	
}

textures/sirius/proto_lightred_64_7k
{
	qer_editorimage textures/sirius/proto_lightred_64.tga
	surfaceparm nomarks
	q3map_surfacelight 7000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/proto_lightred_64.tga
		blendFunc filter
		rgbGen identity
	}
        {
		map textures/sirius/proto_lightred_64.tga
		blendFunc add
	}
	
}

// from niveus - blinking light
textures/sirius/proto_lightred_64_blink
{
	q3map_lightimage textures/sirius/proto_lightred_64.tga
	qer_editorimage textures/sirius/proto_lightred_64.tga
	surfaceparm nomarks
	q3map_surfacelight 50
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/proto_lightred_64.tga
		blendFunc filter
		rgbGen identity
	}
        {
		map textures/sirius/proto_lightred_64.tga
		blendFunc add
		rgbGen wave square .5 .5 0 1
	}
	
}

textures/sirius/sq_light_orange_s_25k
{
	qer_editorimage textures/sirius/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 25000
	{
		map textures/sirius/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/sirius/sq_light_orange.tga
		blendfunc add
	}
}

textures/sirius/sq_light_orange_s_10k
{
	qer_editorimage textures/sirius/sq_light_orange.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map textures/sirius/sq_light_orange.tga
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/sirius/sq_light_orange.tga
		blendfunc add
	}
}

// by Evillair, edited by Godmil
textures/sirius/e8tmtllight2
{
	qer_editorimage textures/sirius/e8tmtllight2.tga
	q3map_lightimage textures/sirius/e8tmtllight2.blend.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	{
		map textures/sirius/e8tmtllight2.tga
	}
	{
		map $lightmap
		blendfunc filter
		tcGen lightmap
	}
	{
		map textures/sirius/e8tmtllight2.blend.tga
		blendfunc add
	}
}

// cubelight white (niveus)
textures/sirius/cubelight_32_white_250
{
	qer_editorimage textures/sirius/cubelight_32_white.tga
	surfaceparm nomarks
	q3map_surfacelight 250
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// cubelight white (niveus)
textures/sirius/cubelight_32_white_5k
{
	qer_editorimage textures/sirius/cubelight_32_white.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// cubelight white (niveus)
textures/sirius/cubelight_32_white_10k
{
	qer_editorimage textures/sirius/cubelight_32_white.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/sirius/cubelight_32_white.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// -------------------- Mist -----------------------

textures/sirius/mist_s
{
	qer_editorimage textures/sirius/mist.tga
        entityMergable
        cull none
        {
                map textures/sirius/mist.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                rgbGen          vertex
                alphaGen        vertex
        }
}