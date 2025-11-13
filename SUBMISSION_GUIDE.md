# Assignment Submission Guide

## Submission Requirements

Based on the assignment instructions, you typically need to:

1. **Deploy the app to a public cloud** (Heroku is mentioned in the assignment)
2. **Submit the deployed URL**
3. **Submit your code** (usually via Git repository or file upload)

## Step 1: Prepare Your Code for Submission

### Create a .gitignore file (if needed)

Make sure your `.gitignore` includes:
- `db/*.sqlite3` (database files)
- `log/*.log`
- `tmp/`
- `vendor/bundle/` (or commit it if required)
- `.env` files

## Step 2: Deploy to Heroku

### Prerequisites
- Heroku CLI installed (`heroku -v` to verify)
- Heroku account (sign up at https://www.heroku.com)

### Deployment Steps

1. **Login to Heroku:**
   ```bash
   heroku login
   ```

2. **Create a Heroku app:**
   ```bash
   heroku create rottenpotatoes-yourname
   # Replace 'yourname' with your actual name/identifier
   ```

3. **Update Gemfile for production:**
   The Gemfile should already have SQLite3 for development. For Heroku, you'll need PostgreSQL:
   
   Add to your Gemfile:
   ```ruby
   group :production do
     gem 'pg', '~> 1.1'
   end
   
   group :development, :test do
     gem 'sqlite3', '~> 1.4'
   end
   ```

4. **Update database configuration:**
   Heroku will automatically set the `DATABASE_URL` environment variable, so your `config/database.yml` should handle it:
   
   ```yaml
   production:
     <<: *default
     url: <%= ENV['DATABASE_URL'] %>
   ```

5. **Install gems:**
   ```bash
   bundle install
   ```

6. **Deploy to Heroku:**
   ```bash
   git push heroku main
   # or: git push heroku master (if your branch is master)
   ```

8. **Run migrations on Heroku:**
   ```bash
   heroku run rake db:migrate
   ```

9. **Seed the database (optional):**
   ```bash
   heroku run rake db:seed
   ```

10. **Open your app:**
    ```bash
    heroku open
    ```

## Step 3: Verify Your Deployment

Before submitting, verify:
- ✅ App loads at the Heroku URL
- ✅ Movies list page works (`/movies`)
- ✅ Can create a new movie
- ✅ Can edit a movie
- ✅ Can delete a movie
- ✅ Can view individual movie details

## Step 4: Submission Methods

### Option A: LMS Submission (Canvas/Blackboard/etc.)

1. **Submit the Heroku URL:**
   - Copy your Heroku app URL (e.g., `https://rottenpotatoes-yourname.herokuapp.com`)
   - Paste it in the assignment submission field

2. **Submit Code (if required):**
   - Push to GitHub:
     ```bash
     # Create a GitHub repository
     # Then:
     git remote add origin https://github.com/YOUR_USERNAME/rottenpotatoes.git
     git push -u origin main
     ```
   - Submit the GitHub repository URL, OR
   - Zip the project folder (excluding `vendor/bundle`, `node_modules`, `db/*.sqlite3`, `log/`, `tmp/`)

### Option B: Direct File Upload

If the assignment requires file upload:

1. **Create a zip file:**
   ```bash
   cd /home/smitdesai/njit/Ruby/Intro\ to\ Rails
   zip -r rottenpotatoes-submission.zip rottenpotatoes \
     -x "rottenpotatoes/vendor/bundle/*" \
     -x "rottenpotatoes/db/*.sqlite3" \
     -x "rottenpotatoes/log/*" \
     -x "rottenpotatoes/tmp/*" \
     -x "rottenpotatoes/.git/*"
   ```

2. **Upload the zip file** to your LMS

### Option C: Git Repository Submission

1. **Push to GitHub:**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/rottenpotatoes.git
   git push -u origin main
   ```

2. **Submit the repository URL** in your assignment

## Step 5: What to Include in Submission

Make sure your submission includes:

- ✅ **Deployed URL** (Heroku or other cloud platform)
- ✅ **Source code** (GitHub repo or zip file)
- ✅ **README.md** with setup instructions
- ✅ **Screenshots** (if required by assignment)
- ✅ **Any additional files** mentioned in assignment requirements

## Troubleshooting Heroku Deployment

### If deployment fails:

1. **Check logs:**
   ```bash
   heroku logs --tail
   ```

2. **Common issues:**
   - **Database errors:** Make sure migrations ran: `heroku run rake db:migrate`
   - **Asset compilation:** May need to precompile: `heroku run rake assets:precompile`
   - **Gemfile issues:** Ensure all gems are compatible with Heroku

3. **Reset database (if needed):**
   ```bash
   heroku pg:reset DATABASE
   heroku run rake db:migrate
   heroku run rake db:seed
   ```

## Alternative: Deploy to Other Platforms

If Heroku isn't available, consider:

- **Railway** (https://railway.app) - Free tier available
- **Render** (https://render.com) - Free tier available
- **Fly.io** (https://fly.io) - Free tier available

The deployment process is similar - they all support Rails apps.

## Final Checklist Before Submission

- [ ] App is deployed and accessible via public URL
- [ ] All CRUD operations work (Create, Read, Update, Delete)
- [ ] Database is seeded with sample movies
- [ ] Code is ready for submission
- [ ] README.md is updated
- [ ] Heroku URL (or other deployment URL) is ready to submit
- [ ] Code repository URL is ready (if required)

## Submission Format Example

**Assignment Submission:**

**Deployed URL:** https://rottenpotatoes-yourname.herokuapp.com

**GitHub Repository:** https://github.com/YOUR_USERNAME/rottenpotatoes

**Notes:**
- App successfully deployed to Heroku
- All CRUD operations functional
- Database seeded with 4 sample movies
- Bootstrap UI implemented for better user experience

---

**Good luck with your submission!** 🎬


